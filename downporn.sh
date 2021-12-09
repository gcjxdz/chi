#!/bin/bash
#down pornbestpic
for line1 in `cat  pic.txt`
do
  line=`echo $line1 | tr -d "\n\r"`;
  tempdir=${line#*org};
   yanzheng=${tsdir##*/}
   echo $yanzheng
   m3u8dir='.'${tempdir%\?*};
   m3u8dir2=${m3u8dir%/*};
   mkdir -p $m3u8dir2;
  wget $line -O $m3u8dir2'/t.jpg' --header="referer:http://www.pornbest.org/zh-hans/"$yanzheng -U "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36";
  if [ $? -ne 0 ]; then
    echo $line"m3u8 down fali";
    break;
  fi 
done
