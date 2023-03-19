FROM simontasker/docker-river-dependencies:latest

WORKDIR /

# Need to mount .cargo folder as tmpfs in order to get around large file issue on arm/v7 images
# https://github.com/rust-lang/cargo/issues/8719
RUN --mount=type=tmpfs,target=/root/.cargo curl -sSf https://sh.rustup.rs | bash -s -- -y \
    && export PATH="/root/.cargo/bin:${PATH}" \
    && pip install river
RUN pip install paho-mqtt
RUN pip install grpcio