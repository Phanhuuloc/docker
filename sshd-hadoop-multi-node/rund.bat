docker build -t hadoop_sshd .
docker run -d -P --name hmaster -h master.hadoop hadoop_sshd
docker run -d -P --name slave01 -h slave01.hadoop hadoop_sshd
docker run -d -P --name slave02 -h slave02.hadoop hadoop_sshd
docker run -d -P --name slave03 -h slave03.hadoop hadoop_sshd
echo "SUCCESS!!!!!!!!"