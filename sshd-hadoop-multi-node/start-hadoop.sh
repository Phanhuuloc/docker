#!/bin/sh
hdfs namenode -format
start-dfs.sh
start-yarn.sh
hdfs dfsadmin -report