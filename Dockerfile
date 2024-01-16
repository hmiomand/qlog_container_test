FROM rust:latest

RUN git clone https://github.com/hmiomand/qlog_container_test.git

RUN wget https://nasext-vaader.insa-rennes.fr/ietr-vaader/images.zip
RUN unzip -q images.zip

ENTRYPOINT [ "cargo", "run", "--release", "--" ]