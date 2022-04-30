#!/bin/bash 
echo what do you wanna md5 hash?
read VALUE
echo The md5 hash of $VALUE is:
echo -n $VALUE | md5sum | awk '{print $1}'