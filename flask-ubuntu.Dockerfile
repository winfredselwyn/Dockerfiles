FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install python
RUN apt-get install -y python-pip
RUN apt-get clean all

RUN pip install flask

ADD hello.py /tmp/hello.py

EXPOSE 5000

CMD ["python", "/tmp/hellp.py"]
