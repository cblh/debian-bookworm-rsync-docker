FROM debian:bookworm-20240423
RUN apt-get update && apt-get install -y gcc
RUN apt install -y gcc g++ gawk autoconf automake python3-cmarkgfm
RUN apt install -y acl libacl1-dev
RUN apt install -y attr libattr1-dev
RUN apt install -y libxxhash-dev
RUN apt install -y libzstd-dev
RUN apt install -y liblz4-dev
RUN apt install -y libssl-dev
RUN apt-get install make
WORKDIR /opt/code
COPY rsync-3.3.0.tar.gz rsync-3.3.0.tar.gz
RUN tar -zxvf rsync-3.3.0.tar.gz && cd rsync-3.3.0 && ./configure  && make && chmod +x ./rsync && ./rsync --version