#!/bin/bash

echo "Enter a file Name:"
read File_Name
if [ -f ${File_Name} ]
then
    file_read=$(cat ${File_Name} | tr -c '[:alnum:]' '[\n*]' | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -r |head -n 5)
    echo " most repetaed word in given file:$file_read"
else
    echo " file is not exists. please enter correct filename"
fi
