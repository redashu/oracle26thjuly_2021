FROM python
# docker engine will try to pull image from Docker hub
# if not present 
LABEL  "name"="ashutoshh"
LABEL  "email"="ashutoshh@linux.com"
# image designer info but this is optional field 
RUN  mkdir  /mycode
# to access terminal of docker container 
COPY  oracle.py  /mycode/oracle.py
# copy code from docker client to Docker engine 
# during image build time 
CMD  ["python","/mycode/oracle.py"]
# default container process 
# it can be replaced by user during container creation time 

