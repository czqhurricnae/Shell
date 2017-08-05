#!/bin/sh

for file in *.pyc
do
    rm -f $file
    echo "删除文件$file\n"
done
for file in *.py~
do
    rm -f $file
    echo "删除文件$file\n"
done
for file in *.py#
do
    rm -f $file
    echo "删除文件$file\n"
done
