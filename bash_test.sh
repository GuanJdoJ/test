#!/bin/bash  

#当前项目路径
CUR_PROJECT_PATH=$(dirname $(dirname $(pwd)))

# 定义目录结构
DIR_ARR=(/src /src/view /src/model /src/resource /src/resource/lang /src/resource/css /src/resource/img)

#遍历目录结构数组，生成对应文件夹
for((i=0;i<${#DIR_ARR[@]};i++)) 
do
    #${#array[@]}获取数组长度用于循环
    #如果当前路径文件夹不存在，生成文件夹
    if [ ! -d ${CUR_PROJECT_PATH}${DIR_ARR[i]} ]
    then mkdir ${CUR_PROJECT_PATH}${DIR_ARR[i]};
    fi
done

rm -rfv ${CUR_PROJECT_PATH}/bash_template
