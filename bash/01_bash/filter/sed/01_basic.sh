#How to show only a given line or range of lines?
sed -n '1p' data.csv
sed -n '1,5p' data.csv
sed -n '$p' data.csv

#How to see all the female users?
sed -n '/Female/p' data.csv


#How to use multiple expression in sed command?
#Example: If you wanna only see 2 and 5th line
sed -n -e '2p' -e '5p' data.csv

#How to see all the male and female users?
sed -n -e '/India/p' -e '/Germany/p' data.csv


#How to see next 4 lines from 2nd line?
sed -n '2,+4p' data.csv

#How to see every 2nd line from first line?
sed -n '1~2p' data.csv

#How to read expression from external file?
sed -f ex_file data.csv

#How to replace a word in a file and show?
sed 's/<string_to_change>/<new_string>/g' data.csv

#How to replace a word in a file and show except a given line or only in given line?
sed '5 s/<string_to_change>/<new_string>/g' data.csv
sed '5! s/<string_to_change>/<new_string>/g' data.csv

#How to replace a word and edit in your file?
sed -i 's/<string_to_change>/<new_string>/g' data.csv

#How to change salary or country of a user (Paul)?
sed '/Paul/ s/25000/35000/g' data.csv
sed '/Paul/ s/India/US/g' data.csv

#How to replace tab with space?
sed 's/\t/ /g' data.csv

#How to delete a line?
sed '1d' data.csv    #(to delete first line)
sed '1,2d' data.csv
sed '$d' data.csv

#How to delete user from India country?
sed '/India/d' data.csv

#How to delete empty line?
sed '/^$/d' data.csv
