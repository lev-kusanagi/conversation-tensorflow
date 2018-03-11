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
RUN echo -e '#!/bin/bash\npython3.6 one-turn.py --config check_tiny --input_string "hello there' > /usr/bin/hi && \
    chmod +x /usr/bin/hi
