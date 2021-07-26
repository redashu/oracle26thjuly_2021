FROM openjdk 
LABEL  email="ashutoshh@linux.com"
RUN mkdir /code
COPY  hello.java /code/hello.java
WORKDIR  /code
# chaning directory during image build time
RUN javac hello.java
# compiling code 
CMD  ["java","myclass"]
# default process 