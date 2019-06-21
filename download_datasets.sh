#!/bin/bash
downloads=`cat datasets.txt`
mkdir -p ./zips
mkdir -p ./extracted
for url in $downloads;
do
    filename=`basename ${url}`
    echo $url
    echo $filename
    dir_name=`basename $filename .zip`
    full_dir=./extracted/$dir_name
    mkdir -p $full_dir
    curl $url > ./zips/$filename
    unzip ./zips/$filename -d $full_dir
done