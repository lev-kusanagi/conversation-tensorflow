FROM ubuntu:latest
RUN apt-get update 
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update 
RUN apt-get install python3.6 -y
RUN apt-get install python3-pip -y
RUN apt-get install python3.6-venv -y
COPY / /
RUN python3.6 -m pip install -r requirements.txt
