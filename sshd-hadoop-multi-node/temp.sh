#!/usr/bin/env bash


export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export HADOOP_PREFIX="/home/loc/hadoop-2.5.2"
export HADOOP_CONF_DIR=$HADOOP_PREFIX/etc/hadoop
export PATH=$PATH:$HADOOP_PREFIX/bin
export PATH=$PATH:$HADOOP_PREFIX/sbin
export HADOOP_MAPRED_HOME=${HADOOP_PREFIX}
export HADOOP_COMMON_HOME=${HADOOP_PREFIX}
export HADOOP_HDFS_HOME=${HADOOP_PREFIX}
export YARN_HOME=${HADOOP_PREFIX}
export HADOOP_HOME=${HADOOP_PREFIX}
export HADOOP_CLASSPATH=${HADOOP_PREFIX}/share/hadoop/mapreduce/mapred-2.5.2.jar

export HIVE_HOME=/home/loc/apache-hive-1.2.2-bin
export HIVE_CONF_DIR=/home/loc/apache-hive-1.2.2-bin/conf
export PATH=$HIVE_HOME/bin:$PATH

export SQOOP_HOME=/home/loc/sqoop-1.4.6.bin__hadoop-0.23
export PATH=$SQOOP_HOME/bin:$PATH

export CLASSPATH=""
export CLASSPATH=$CLASSPATH:/home/loc/hadoop-2.5.2/share/hadoop/common/lib
export CLASSPATH=$CLASSPATH:/home/loc/hadoop-2.5.2/share/hadoop/hdfs/lib
export CLASSPATH=$CLASSPATH:/home/loc/hadoop-2.5.2/share/hadoop/mapreduce/lib
export CLASSPATH=$CLASSPATH:/home/loc/hadoop-2.5.2/share/hadoop/yarn/lib
export CLASSPATH=$CLASSPATH:/home/loc/hadoop-2.5.2/share/hadoop/tools/lib
export CLASSPATH=$CLASSPATH:/home/loc/hive/apache-hive-2.3.0-bin/lib/*
export HADOOP_USER_CLASSPATH_FIRST=true
export DERBY_HOME=/home/loc/db-derby-10.13.1.1-bin
export PATH=$PATH:$DERBY_HOME/bin
export CLASSPATH=$CLASSPATH:$DERBY_HOME/lib/derby.jar:$DERBY_HOME/lib/derbytools.jar
