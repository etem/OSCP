#!/bin/bash

#This program will prompt for an alias name and command and write it to the
#~/.bash_aliases file for both zak and root

echo "please enter an alias name: "
read alias_name

echo 'please enter the alias command (without quotes):'
read alias_command

echo alias $alias_name\=\'$alias_command\' >> /home/zak/.bash_aliases		#add alias to user "zak"
echo alias $alias_name\=\'$alias_command\' >> /root/.bash_aliases	      #add alias to user "root"
echo $alias_name\=\'$alias_command\'                                    #echo to terminal for error checking
