FROM ubuntu

RUN apt-get update
#install curl for test purpose
RUN apt-get -y install curl
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN pip3 install bottle

# creation du repertoire applicatif (mkdir + cd)
WORKDIR /opt/app
COPY . .
ENTRYPOINT /bin/bash -c "python3 app.py"