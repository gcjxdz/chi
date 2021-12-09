#!/bin/bash
for line1 in `cat  pic.txt`
do
  line=`echo $line1 | tr -d "\n\r"`;
  tempdir=${line#*com};
   picdir='.'${tempdir};
   picdir2=${picdir%/*};
   mkdir -p $picdir2;
  wget $line -O $picdir2'/600x336.jpg' -U "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36";
  if [ $? -ne 0 ]; then
    echo $line"pic down fali";
    break;
  else
    echo "pic down succeed"
  fi
done
