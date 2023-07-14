docker pull instrumentisto/postfix:latest
mkdir /mnt/bind
chmod 755 /mnt/bind/
ll -a
cp /home/it3510/main.cf /mnt/bind/
docker container ls
docker run -d -p 25:25 -v /mnt/postfix/main.cf:/etc/postfix/main.cf --name=postfix instrumentisto/postfix
docker containers
docker images
docker run -d -p 25:25 -v /mnt/postfix/main.cf:/etc/postfix/main.cf --name=postfix2 instrumentisto/postfix
b99821532719f95b7771a31fb4583bb475dd41b25d15e3535090641f5498bc83
docker images
docker containers ls
docker container ls
docker run -d -p 25:25 -v /mnt/bind/main.cf:/etc/postfix/main.cf --name=postfix2 instrumentisto/postfix
docker run -d -p 25:25 -v /mnt/bind/main.cf:/etc/postfix/main.cf --name=postfix instrumentisto/postfix
docker run -d -p 25:25 -v /mnt/bind/main.cf:/etc/postfix/main.cf --name=postfix3 instrumentisto/postfix
docker rm -fv $(docker ps -aq)
docker run -d -p 25:25 -v /mnt/bind/main.cf:/etc/postfix/main.cf --name=postfix3 instrumentisto/postfix
netstat -a | grep port
netstat -a
netstat -a | grep 25
docker run -d -p 25:25 -v /mnt/bind/main.cf:/etc/postfix/main.cf --name=postfix instrumentisto/postfix
netstat -pna | grep 25
sudo lsof -i -P -n | grep 25
sudo lsof | grep 25
clear
sudo lsof -i -P -n | grep 25
netstat -pna | grep 25
sudo lsof -i | grep 25
kill 1615
sudo lsof -i | grep 25
docker run -d -p 25:25 -v /mnt/bind/main.cf:/etc/postfix/main.cf --name=postfix instrumentisto/postfix
docker run -d -p 25:25 -v /mnt/bind/main.cf:/etc/postfix/main.cf --name=postfix2 instrumentisto/postfix
clear
docker container ls
sudo firewall-cmd --permanent --add-service=smtp
sudo firewall-cmd --reload
telnet localhost 25
netstat
clear
yum install telnet
telnet localhost 25
docker container ls
docker logs 8c6c756c6944
