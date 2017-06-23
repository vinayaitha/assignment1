#!/bin/sh

if [[ $# -ne 2 ]];
 then              
    echo "usage:$0 <user> <host>"
    exit 1
fi
#username of the machine to which we want to connect
user=$1
#hostname is ip address of the machine
host=$2
# command to be executed on connected machine
command="ls -R"

for host in ${host} ; 

  do
     ssh -l ${user} ${host} "${command}"
      
  done

