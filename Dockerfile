FROM gcc:13

RUN apt-get update && apt-get install -y cmake git

WORKDIR /app

RUN git clone https://github.com/CharlieFusion/CPPLab3.git

RUN mkdir build
WORKDIR /app/build

RUN cmake .. && make