FROM rust:latest

ENTRYPOINT [ "uname", "-m" ]