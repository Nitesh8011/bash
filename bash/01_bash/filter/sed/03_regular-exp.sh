SED Regular Expressions

^   start of line
$   end of line
.   single character
[]  match character set
[^] exclusive set
*   zero or more occurance

examples:

sed -n '/^2/p' data.csv
sed -n '/ia$/p' data.csv

#How to find a 5 letter name which start with S and end with a?
sed -n '/^S...a$/p' names

#How to find names start with V?
sed -n '/^V/p' names

#How to find names end with a?
sed -n '/a$/p' names

#How to use wild card?
ls -ltr *.txt

#How to see names start with only A and C?
sed -n '/[AC]/p' names

#How to see names start with only A to D?
sed -n '/^[A-D]/p' names