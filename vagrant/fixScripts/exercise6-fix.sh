#!/bin/bash
#add fix to exercise6-fix here
; '* write a script that takes a variable number of arguments,
 with a minimum of 2 arguments. 
 all arguments except the last are paths to files on the server running the script.
 The last argument is a path to a folder on the other server. The script will:
    Copy all the received files to the destination path on the other server.
    The last line of output will print the total number of bytes copied. 
	Please print only the number, without additional text.
'
#test if minimum of 2 arguments are assigned
if [ $# -lt 2 ] 
then
    echo 'missing one more argument'
else
    if [ $HOSTNAME = "server1" ]
        then
           destination="server2"
           copy_files
    else
        destination="server2"
        copy_files
	fi
sum_files=0
echo $sum_files
fi
   



