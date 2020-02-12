#!/bin/bash
# Authors : Vanessa Reyes & Nate Christy
# Date: 2/7/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem
#Problem 1:
# echo command and read command
echo "Enter in a file name"
read file
echo "Enter in an expression"
read exp
echo "You inputed $file and $exp"

#Problem 2:
#grep command and variables
grep "$exp" $file

#Problem 3:
#Count the number of phone numbers in regex_practice.txt
# -c used to count number of lines
# -P used to allow regex syntax with grep
grep -c -P '^[0-9]{3}-[0-9]{3}-[0-9]{4}$' regex_practice.txt

#Problem 4.1:
# Count the number of emails in regex_practice.txt
grep -c -P  '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}' regex_practice.txt

#Problem 4.2: 
#list of phone numbers with '303' area code
grep -c -P '^303-[0-9]{3}-[0-9]{4}$' regex_practice.txt

#Problem 4.3:
#store list of all emails from website and enter output into text file
# use >> to output into text file
# make sure use @geocities domain in email search
grep -P '[a-zA-Z0-9_%+-]+@geocities\.com' regex_practice.txt >> email_results.txt

# add email results text file to git
git add email_results.txt
#commit 
git commit -m "results from email_results.txt"
# push git manually

