#### docker
    https://www.tecmint.com/add-users-in-linux/
    https://docs.docker.com/engine/examples/running_ssh_service/#run-a-test_sshd-container
    https://viblo.asia/p/docker-tao-docker-images-tu-dockerfile-3P0lPORvZox
    https://docs.docker.com/engine/reference/builder/#add

#### hadoop
    http://www.bogotobogo.com/Hadoop/BigData_hadoop_Install_on_ubuntu_single_node_cluster.php
    http://data-flair.training/blogs/install-hadoop-2-x-ubuntu-hadoop-multi-node-cluster/
    https://xuri.me/2016/03/22/setup-hadoop-on-ubuntu-multi-node-cluster.html

####~/.bashrc
    export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
    export HADOOP_PREFIX="/hadoop/hadoop-2.5.2"
    export PATH=$PATH:$HADOOP_PREFIX/bin
    export PATH=$PATH:$HADOOP_PREFIX/sbin
    export HADOOP_MAPRED_HOME=${HADOOP_PREFIX}
    export HADOOP_COMMON_HOME=${HADOOP_PREFIX}
    export HADOOP_HDFS_HOME=${HADOOP_PREFIX}
    export YARN_HOME=${HADOOP_PREFIX}

#### ipconfig
    echo '172.17.0.2 master' >> /etc/hosts
    echo '172.17.0.3 slave01' >> /etc/hosts
    echo '172.17.0.4 slave02' >> /etc/hosts
    echo '172.17.0.5 slave03' >> /etc/hosts

#### ssh
    ssh-keygen -t rsa -P ""
    ssh-copy-id -i $HOME/.ssh/id_rsa.pub root@slave01


#### bash format
    To fix, open your script with vi or vim and enter in vi command mode (key ESC), then type this:
    :set fileformat=unix
    Finally save it
    :x! or :wq!

#### Docker - How to cleanup (unused) resources

Once in a while, you may need to cleanup resources (containers, volumes, images, networks) ...
    
#### delete volumes
    
    // see: https://github.com/chadoe/docker-cleanup-volumes
    
    $ docker volume rm $(docker volume ls -qf dangling=true)
    $ docker volume ls -qf dangling=true | xargs -r docker volume rm
    
#### delete networks

    $ docker network ls  
    $ docker network ls | grep "bridge"   
    $ docker network rm $(docker network ls | grep "bridge" | awk '/ / { print $1 }')
    
#### remove docker images
    
    // see: http://stackoverflow.com/questions/32723111/how-to-remove-old-and-unused-docker-images
    
    $ docker images
    $ docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
    
    $ docker images | grep "none"
    $ docker rmi $(docker images | grep "none" | awk '/ / { print $3 }')

#### remove docker containers

    // see: http://stackoverflow.com/questions/32723111/how-to-remove-old-and-unused-docker-images
    
    $ docker ps
    $ docker ps -a
    $ docker rm $(docker ps -qa --no-trunc --filter "status=exited")
    
#### Resize disk space for docker vm
    
    $ docker-machine create --driver virtualbox --virtualbox-disk-size "40000" default

#### hdfs
hadoop fsck / -files -blocks
hdfs dfs -mkdir /user/login_user_name   
hdfs dfs -put file_name /user/login_user_name
hdfs dfs -copyFromLocal /home/loc/hadoop-2.5.2/input/2008.csv /wordcount/input
hadoop hdfs dfs -ls .
hadoop hdfs dfs -get file_name /user/login_user_name
hadoop hdfs dfs -rm file_name /user/login_user_name
hdfs dfs -rm -r hdfs://master:9000/wordcount/output/flightsCount1
hadoop hdfs dfs -help
hadoop jar ./hadoop-mapreduce-examples-2.3.0.jar wordcount /wordcount/input/file01 /wordcount/output/file01-output

hadoop fs -cat /user/root/output/flightsCount/part-r-00000

#### US Airline on-time Performance
https://old.datahub.io/dataset/us-airline-on-time-performance/resource/37834910-8634-45a9-aed4-9d59dac7f1d6