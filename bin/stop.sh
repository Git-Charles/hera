#!/bin/bash
pid=`ps | grep java | grep hera | awk '{print $1}'`

[ ! $pid ] && echo "找不到hera的进程,请确认hera已经启动" && exit 0

res=`kill -9 $pid`

echo 关闭hera成功，pid:$pid
