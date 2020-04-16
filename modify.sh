#!/bin/bash

lowercase="lo"
uppercase="up"
hint()
{
echo "Usage: $0 [-r] [-l or -u] DIR1 [DIRI2 DIR3...]
 -r recursive mode
 -l to lowcase
 -u to upcase
 -h to get help_message"
exit 1 
}

#Function when not recursive mode in term of RES = 0
name_modify()
{
cd $DIR
if [ $ACTION = $lowercase ]; then
for filename in `ls`
do
new=`echo $filename | tr [A-Z] [a-z]`
mv $filename $new
echo "The $filename is rename to $new"
done
cd ..
elif [ $ACTION = $uppercase ]; then
for filename in `ls`
do
new=`echo $filename | tr [a-z] [A-Z]`
mv $filename $new
echo "The $filename is rename to $new"
done
cd ..
else
echo "Wrong instruction please use: /bin/sh modify.sh -h to check"
fi
}

#Function when recursive mode in term of RES = 1
RES_function()
{
    local cur_dir parent_dir workdir
    workdir=$DIR
    cd $DIR
    if [ ${DIR} = "/" ]
    then
    cur_dir=""
    else
    cur_dir=$(pwd)
    fi
    
    for dirlist in $(ls ${cur_dir})
   do
    if test -d ${dirlist}; then
    cd ${dirlist}
    RES_function ${cur_dir}/${dirlist}
    cd ..
    elif [ $ACTION = $lowercase ]; then
    for file in `ls | grep '[A-Z]'`
    do
    str=`echo $file | tr 'A-Z' 'a-z'`
    mv $file $str
    echo "The $file is rename to $str"
    done
    elif [ $ACTION = $uppercase ]; then
    for file in `ls | grep '[a-z]'`
       do
       str=`echo $file | tr 'a-z' 'A-Z'`
       mv $file $str
       echo "The $file is rename to $str"
       done
    
    fi
    done
    cd ..
}



if test $# -lt 1; then
echo "Too few arguments."
hint
exit 1
fi

RES=0
ACTION="NULL"

while [ "$1" != "" ]
do
case $1 in
"-r") RES=1
shift 1
;;
"-l") ACTION="lo"
shift 1
;;
"-u") ACTION="up"
shift 1
;;
"-h")
echo "Usage: $0 [-r] [-l or -u] DIR1 [DIRI2 DIR3...]
 -r recursive mode
 -l to lowcase
 -u to upcase
 -h to get help_message"
exit 1
;;
*)
break
;;
esac
done


if [ $RES = 0 ]
then
while [ "$1" != "" ]
do
if test -d $1; then
DIR="$1"
shift 1
else
echo "no such directory --- $1"
hint
fi
echo "\n$DIR\n"
name_modify $ACTION $DIR
done
exit
fi

if [ $RES = 1 ]
then
while [ "$1" != "" ]
do
if test -d $1; then
DIR="$1"
shift 1
echo "\n$DIR\n"
RES_function $ACTION $DIR
elif test -f $1; then
echo "You input a dile but not a directory. please try again "
exit1
else
echo "the Directory $1 isn't exist which you input,pls input a new one!!"
hint
fi
done
fi


