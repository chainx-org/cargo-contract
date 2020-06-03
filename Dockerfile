FROM phusion/baseimage:0.10.2 as builder
LABEL maintainer "xuliuchengxlc@gmail.com"
LABEL description="The build stage for cargo-contract."

ARG PROFILE=release
ARG APP=cargo-contract

WORKDIR /$APP

ENV RUSTUP_HOME=/rust \
    CARGO_HOME=/cargo \
    PATH=/cargo/bin:/rust/bin:$PATH

RUN apt-get update && \
    apt-get -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade -y && \
    apt-get install -y cmake pkg-config libssl-dev git clang

RUN cd /tmp && \
    git clone https://github.com/WebAssembly/binaryen --depth=1 && \
    cd binaryen && \
    cmake . && \
    make && \
    cp /tmp/binaryen/bin/wasm-opt /usr/local/bin

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain nightly --no-modify-path && \
        rustup default nightly && \
        rustup component add rust-src && \
        rustup target add wasm32-unknown-unknown

RUN cargo build --$PROFILE && cp target/$PROFILE/$APP /usr/local/bin
