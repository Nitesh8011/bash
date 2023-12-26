
#How to find total/sum of salary
awk -F, 'BEGIN{sum=0} {sum=sum+$6} END{print "sum of salary: "sum}' data-delimitor.csv


#How to find average salary
awk -F, 'BEGIN{avg=0;sum=0} {sum=sum+$6;avg=sum/NR} END{print "avg salary of employ: "avg}' data-delimitor.csv

#How to print no. of lines
awk 'BEGIN{} {} END{print NR}' data-delimitor.csv

#How to ignore headers/first row to count no. of users


#How to get length of longest line?
awk -F, '{if(length($0)>max)max=length($0)} END{print "lenght of largest line is "max}' data-delimitor.csv

#Print HIGH for salary >20k else LOW
awk -F, '{if($NF>20000)$7="HIGH";else $7="LOW";print $0} END{}' data-delimitor.csv

#Print Total salary paid in Loan department
