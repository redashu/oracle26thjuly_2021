FROM alpine
RUN apk add  python3 
# installing software in alpine is like apk install <anysoftware>
RUN mkdir /mycode
COPY  oracle.py /mycode/oracle.python
CMD ["python","/mycode/oracle.python"]