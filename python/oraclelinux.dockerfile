FROM oraclelinux:8.3
RUN  dnf install python3 -y
RUN mkdir /mycode
COPY  oracle.py /mycode/oracle.python
CMD ["python","/mycode/oracle.python"]