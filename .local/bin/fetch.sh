#!/bin/sh

#colours
RESTORE=$(echo -en '\033[0m')
RED=$(echo -en '\033[00;31m')
GREEN=$(echo -en '\033[00;32m')
YELLOW=$(echo -en '\033[00;33m')
BLUE=$(echo -en '\033[00;34m')
MAGENTA=$(echo -en '\033[00;35m')
PURPLE=$(echo -en '\033[00;35m')
CYAN=$(echo -en '\033[00;36m')
LIGHTGRAY=$(echo -en '\033[00;37m')
LRED=$(echo -en '\033[01;31m')
LGREEN=$(echo -en '\033[01;32m')
LYELLOW=$(echo -en '\033[01;33m')
LBLUE=$(echo -en '\033[01;34m')
LMAGENTA=$(echo -en '\033[01;35m')
LPURPLE=$(echo -en '\033[01;35m')
LCYAN=$(echo -en '\033[01;36m')
WHITE=$(echo -en '\033[01;37m')
ORANGE=$(echo -en '\033[01;33m')
DARK=$(echo -en '\033[01;30m')

#options
os=`cat /etc/os-release | grep PRETTY_NAME | sed 's/\"//g' | sed 's/.*=//g'`
kernel=`uname -r`
uptime=`uptime -p | awk '{print $2 " " $3}'`
shell=`echo $SHELL`
hostname=`cat /etc/hostname`
username=`whoami`
seperator="----------"
packages=`pacman -Qq | wc -l`

#print
echo $LBLUE$username$RESTORE@$LBLUE$hostname
echo $LBLUE"OS:" $RESTORE$os
echo $LBLUE"Kernel:" $RESTORE$kernel
echo $LBLUE"Uptime:" $RESTORE$uptime
echo $LBLUE"packages:" $RESTORE$packages
echo $LBLUE"Shell:" $RESTORE$shell
