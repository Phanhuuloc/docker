#!/bin/sh
hdfs namenode -format
start-dfs.sh
start-yarn.sh
mr-jobhistory-daemon.sh start historyserver
hdfs dfsadmin -report