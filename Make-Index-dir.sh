#!/bin/bash

sdir=`pwd`
sName=`basename $sdir`

echo "<!DOCTYPE html>" > index.html
echo "<html><head><meta charset="utf-8"><title>T depends</title><style>summary {text-decoration:underline;color:blue;font-weight:bold;padding:10px;} </style></head>" >> index.html
echo "<body>" >> index.html
echo "<h3>Molecelar dynamic modeling of:</h3>" >> index.html

echo "<ul>" >> index.html
list=`find . -maxdepth 1 -mindepth 1 -type d -printf "%f\n" | grep -v "^\." | sort`
for i in $list
do
  echo "<li> <a href=\"$i/index.html\" target=\"_blank\">$i</a> </li>" >> index.html
done
echo "</ul>" >> index.html

echo "</ul></details>" >> index.html
echo "</body></html>" >> index.html
