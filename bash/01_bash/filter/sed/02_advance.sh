#How to copy output of sed command in separate file?
sed -n '/India/ w new_data.csv' data.csv

#How to add new line after a given line no.?
sed '5 a new_text' data.csv

#How to add new line after a given string, so it will add text after Paul?
sed '/Paul/ a new_text' data.csv

#How to edit existing line instead of adding new line?
sed '5 c new_text' data.csv (it will add text at line 5)

#How to add new line before a given string, so it will add text before Paul?
sed '/Paul/ i new_text' data.csv

#How to see the hidden characters?
sed -n 'l' data.csv

#How to wrap your file content with given no. of characters?
sed -n 'l 50' data.csv

#How to read content from a file and use in our command?
sed '3 r external_file' data.csv

#How to stop execution of sed command as soon as first occurrence found?
sed '/India/ q' data.csv
sed '5 q' data.csv  (stop execution at line 5)

#How to provide exit status for your sed command?
sed '/India/ q 100' data.csv


#How to execute external command line date in your expression?
sed '2 e date' data.csv

#How to see the line number in file?
sed '=' data.csv
