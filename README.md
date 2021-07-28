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

## Pushing image to OCR

### tag 

```
 docker  tag  ubuntu:latest   phx.ocir.io/axmbtg8judkl/ubuntu:v1
 
```

### login 

```
docker  login  phx.ocir.io  -u axmbtg8judkl/learntechbyme@gmail.com 
```

### pushing 

```
docker  push phx.ocir.io/axmbtg8judkl/ubuntu:v1
```

### logout 

```
docker  logout  phx.ocir.io

```

## COntainer orchestration 

### problem

<img src="prb.png">

## introduction to orchestration engine 

<img src="eg.png">

## k8s architecture 

### kube-apiserver 

<img src="apis.png">

### kube-schedular 

<img src="sch.png">

### etcd is  a NOSQL db -- 

<img src="etcd.png">

### k8s setup 

<img src="setup.png">

### method to deploy k8s cluster

<img src="method.png">

### minikube 

```
 curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 65.9M  100 65.9M    0     0  11.1M      0  0:00:05  0:00:05 --:--:-- 12.3M	
❯       sudo install minikube-darwin-amd64 /usr/local/bin/minikube
Password:
❯ minikube version
minikube version: v1.22.0
commit: a03fbcf166e6f74ef224d4a63be4277d017bb62e

```

### starting cluster

```
❯ minikube version
minikube version: v1.22.0
commit: a03fbcf166e6f74ef224d4a63be4277d017bb62e
❯ minikube  start  --driver=docker
😄  minikube v1.22.0 on Darwin 11.4
✨  Using the docker driver based on existing profile
👍  Starting control plane node minikube in cluster minikube
🚜  Pulling base image ...
🔄  Restarting existing docker container for "minikube" ...
🐳  Preparing Kubernetes v1.21.2 on Docker 20.10.7 ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🌟  Enabled addons: storage-provisioner, default-storageclass
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default



```



