# CRE and its revision 

<img src="cre.png">


## more container architecture understanding 

<img src="ar.png">


## creating a database container 

```
336  docker  run -itd  --name  ashudb -v  ashudbvol:/var/lib/mysql/  -e MYSQL_ROOT_PASSWORD=oracel99   mysql 
  337  docker  volume  ls
  338  docker ps
  339  history 
[ec2-user@ip-172-31-65-105 ~]$ docker  ps
root@20cefb334809:/# 
root@20cefb334809:/# 
root@20cefb334809:/# exit
[ec2-user@ip-172-31-65-105 ~]$ docker  exec -it  ashudb  bash
root@20cefb334809:/# 
root@20cefb334809:/# mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> 


```

## Docker compose for DB 

```
[ec2-user@ip-172-31-65-105 webappashu]$ docker-compose -f  ashu.yaml up  -d
Creating network "webappashu_default" with the default driver
Creating volume "webappashu_ashudbvol11" with default driver
Creating ashudbc1 ... done
[ec2-user@ip-172-31-65-105 webappashu]$ docker-compose -f  ashu.yaml ps
  Name                Command               State          Ports       
-----------------------------------------------------------------------
ashudbc1   docker-entrypoint.sh --def ...   Up      3306/tcp, 33060/tcp

```


