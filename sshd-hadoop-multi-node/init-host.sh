#!/bin/sh
# echo 'export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"' >> /root/.bashrc
# echo 'export HADOOP_PREFIX="/hadoop/hadoop-2.5.2"' >> /root/.bashrc
# echo 'export PATH=$PATH:$HADOOP_PREFIX/bin' >> /root/.bashrc
# echo 'export PATH=$PATH:$HADOOP_PREFIX/sbin' >> /root/.bashrc
# echo 'export HADOOP_MAPRED_HOME=${HADOOP_PREFIX}' >> /root/.bashrc
# echo 'export HADOOP_COMMON_HOME=${HADOOP_PREFIX}' >> /root/.bashrc
# echo 'export HADOOP_HDFS_HOME=${HADOOP_PREFIX}' >> /root/.bashrc
# echo 'export YARN_HOME=${HADOOP_PREFIX}' >> /root/.bashrc


#ipconfig
echo '172.17.0.2 master' >> /etc/hosts
echo '172.17.0.3 slave01' >> /etc/hosts
echo '172.17.0.4 slave02' >> /etc/hosts
echo '172.17.0.5 slave03' >> /etc/hosts

