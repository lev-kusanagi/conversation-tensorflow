FROM ubuntu:16.04
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update 
RUN apt-get install python3.6 -y
RUN apt-get install python3-pip -y
RUN apt-get install python3.6-venv -y
RUN python3.6 -m pip install -r requirements.txt
RUN python3.6 chat.py --config check_tiny
