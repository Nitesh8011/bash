# Execute this before running rest of the script
# pip install requests


import requests
from requests.auth import HTTPBasicAuth 
import json
import warnings

warnings.filterwarnings('ignore')


# Main Elastic Search
 
# 1. _drf_
# 2. _cr_do_
# 3. _do_
# 4. login_history
# 5. do_logs
 
# DIW Elastic Search
 
# 1. _br_
# 2. _src_
# 3. _corr_


namespace = 'fuse'

source_port = '9200'
dest_port = '9200'

target_password = '94065uI8FPOt66uU10wxcdYA'

source_url = 'a846206318bd04f3fba5df7ad78efaaf-760219589.ap-southeast-2.elb.amazonaws.com'
dest_url = 'abfdc2c3887d549a0a456fa9da6057c4-531991532.ap-southeast-2.elb.amazonaws.com'

failed_indexes = []
#MAIN

# {namespace}*_do_*
# {namespace}*login_history*
# {namespace}*drool_mdo_roles*
# {namespace}*drools_mdo_users*

# index_patterns = ['*_do_*','*login_history*','*drool_mdo_roles*','*drools_mdo_users*', '*_drf_*']

#DIW
# {namespace}*_br_*
# {namespace}*_src_*
# {namespace}*_corr*

# index_patterns = ['*_br_*','*_src_*','*_corr*', '*_mro_local_lib_*', '*_do_schema_src_*']


# The API endpoint

    
get_all_indexes = "https://" + source_url + ":" + source_port + "/_cat/indices/" + namespace + "*?h=index"
# A GET request to the API
response = requests.get(get_all_indexes, verify=False, auth = HTTPBasicAuth('admin', 'admin'), timeout=2400)

file_path = "/Users/shubhambakshi/Desktop/InfraFiles/es_migration/output.txt"
with open(file_path, "wb") as file:
        file.write(response.content)

with open(file_path, 'r') as output_file:
    for index in output_file:
        source_url = "https://" + source_url + ":" + source_port +"/"
        dest_url = "https://" + dest_url + ":"  + dest_port +"/"
        print(index.strip())
        
        
        #Settings migration
        settings_response = requests.get(source_url + index.strip() + "/_settings", verify=False, auth = HTTPBasicAuth('admin', 'admin'), timeout=2400)
        setting_response_json = settings_response.json()[index.strip()]
        
        del setting_response_json['settings']['index']['version']
        del setting_response_json['settings']['index']['creation_date']
        del setting_response_json['settings']['index']['provided_name']
        del setting_response_json['settings']['index']['uuid']
        try:
            destination_settings_response = requests.put(dest_url  + index.strip() , verify=False, auth = HTTPBasicAuth('elastic-internal', target_password), json=setting_response_json, timeout=2400)
        except:
            failed_indexes.append(index.strip() + " settings")
            continue
        print('moving settings finished')
        print(destination_settings_response.text)


        #Mappings Migration
        print('moving mappings')
        mappings_response = requests.get(source_url + index.strip() + "/_mappings", verify=False, auth= HTTPBasicAuth('admin', 'admin'))
        mappings_response_json = mappings_response.json()[index.strip()]['mappings']
        try:
            destination_mappings_response = requests.put(dest_url + index.strip() + "/_mappings", verify=False, auth = HTTPBasicAuth('elastic-internal', target_password), json=mappings_response_json, timeout=2400)
        except:
            failed_indexes.append(index.strip() + ' mapping')
            continue
        print(destination_mappings_response.text)


        
        print(index.strip(), ' reindex start')
        
        data = {}
        source = {}
        dest={}
        remote = {}

        remote['host'] = "https://os13x-tfnsw-sb.opensearch:9200"
        remote['username'] = "admin"
        remote['password']= "admin"

        source['remote'] = remote
        source['index'] = index.strip()

        dest['index'] = index.strip()

        data['source'] = source
        data['dest'] = dest

        try:
            reindex = requests.post(dest_url + "_reindex",  verify=False, auth = HTTPBasicAuth('elastic-internal', target_password), json=data, timeout=2400)
            if reindex.status_code == 200:
                print('reindex finished')
            else:
                print(reindex.json())
        except:
                failed_indexes.append(index.strip() + ' reindex')
                continue
                    
print(failed_indexes)
with open("/Users/shubhambakshi/Desktop/InfraFiles/es_migration/failed_indexes.txt", "w") as fp:
    for items in failed_indexes:
        fp.write(items + "\n")
