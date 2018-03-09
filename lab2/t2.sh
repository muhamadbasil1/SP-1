#!/bin/bash
num=`pidof bash`
cd /proc/$num

ppid=`cat status | grep "PPid" `
pid=`cat status | grep -w "Pid" `
name=`cat status | grep "Name" `
state=`cat status | grep "State" `
echo "$ppid"
echo "$pid"
echo "$name"
echo "$state"

