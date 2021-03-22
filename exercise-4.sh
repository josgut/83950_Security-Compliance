#/bin/bash

#Search user to remove

if [ $# -ne 1 ]
then 
    echo "Error in parameters: $0 name_of_user_to_remove from sudoers"
    exit 1
fi

user_to_remove=$1

if ! [ $(id -u) = 0 ]
then
   echo "This script must be run as root" 
   exit 2
fi

cat /etc/sudoers | sed -E "/^\s*${user_to_remove}((\s+\(+\s*\w+(,\w+)*\s*\)+\s*=)|(\s+\w+(,\w+)*\s*=))/d" > /tmp/sudoers.$$
#Check new sudoers sintax
visudo -cf /tmp/sudoers.$$ >/dev/null 2>&1
if [ $? -eq 0 ]
then
    # New sudoers differs?
    diff /tmp/sudoers.$$ /etc/sudoers >/dev/null 2>&1
    if [ $? -gt 0 ] 
    then
        cp -f /tmp/sudoers.$$ /etc/sudoers
        echo "Sudoers file modified"
    fi
fi
echo "End of shell script"

