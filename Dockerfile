FROM rust:latest

RUN git clone https://github.com/hmiomand/qlog_container_test.git

WORKDIR /qlog_container_test

RUN wget -q https://nasext-vaader.insa-rennes.fr/ietr-vaader/images.zip
RUN unzip -q images.zip

RUN cargo build --release

ENTRYPOINT [ "cargo", "run", "--release", "--" ]