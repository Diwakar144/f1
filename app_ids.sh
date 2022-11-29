#!/bin/bash
for file in /home/tadmin/*
do
if [ -r $file -a -w $file -a -x $file ]
then

if  [[ $(stat -c "%a" "${file}") == "750" ]]
then
   echo ""${file}" :: single user access"
elif [[ $(stat -c "%a" "${file}") == "777" ]]
then
   echo "' ${file} :: Multiple user access"
fi
fi
-------------------------------------------
#!/bin/bash
for file in $(ls -lRt) */*
do
if [ -r $file -a -w $file -a -x $file ]
then

if  [[ $(stat -c "%a" "${file}") == "750" ]]
then
   echo ""${file}" :: single user access"
elif [[ $(stat -c "%a" "${file}") == "777" ]]
then
   echo "' ${file} :: Multiple user access"
fi
fi
----------------------------------------------

