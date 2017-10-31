FROM ubuntu:latest

RUN apt-get update 
#install tools
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y vim
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping

# ssh
RUN apt-get install -y openssh-client
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

# passwd root
RUN echo 'root:123' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# create user hadoop
RUN mkdir /home/hadoop
RUN chmod -R 777 /home/hadoop
RUN useradd -g 0 -d /home/hadoop hadoop
# create password for hadoop
RUN echo 'hadoop:123' | chpasswd

#make volumn
RUN mkdir /myvol
RUN echo "hello world" > /myvol/greeting
VOLUME /myvol

RUN mkdir /hadoop
RUN echo "hello world" > /myvol/greeting
VOLUME /hadoop

#copy hadoop to container
# ADD ./hadoop-2.5.2 /hadoop/hadoop-2.5.2
COPY ./hadoop-2.5.2 /hadoop/hadoop-2.5.2

#PATH
#ADD bashrc.txt /bashrc.txt
#RUN cat bashrc.txt >> /root/.bashrc
RUN echo 'export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"' >> /root/.bashrc
RUN echo 'export HADOOP_PREFIX="/hadoop/hadoop-2.5.2"' >> /root/.bashrc
RUN echo 'export PATH=$PATH:$HADOOP_PREFIX/bin' >> /root/.bashrc
RUN echo 'export PATH=$PATH:$HADOOP_PREFIX/sbin' >> /root/.bashrc
RUN echo 'export HADOOP_MAPRED_HOME=${HADOOP_PREFIX}' >> /root/.bashrc
RUN echo 'export HADOOP_COMMON_HOME=${HADOOP_PREFIX}' >> /root/.bashrc
RUN echo 'export HADOOP_HDFS_HOME=${HADOOP_PREFIX}' >> /root/.bashrc
RUN echo 'export YARN_HOME=${HADOOP_PREFIX}' >> /root/.bashrc
#RUN source /root/.bashrc

#ipconfig
#RUN cp /etc/hosts /tmp/hosts
#RUN mkdir -p -- /lib-override && cp /lib/x86_64-linux-gnu/libnss_files.so.2 /lib-override
#RUN perl -pi -e 's:/etc/hosts:/tmp/hosts:g' /lib-override/libnss_files.so.2
#ENV LD_LIBRARY_PATH /lib-override

RUN mkdir /env
COPY init-host.sh /env/init-host.sh
COPY init-ssh.sh /env/init-ssh.sh
COPY start-hadoop.sh /env/start-hadoop.sh
COPY stop-hadoop.sh /env/stop-hadoop.sh

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]