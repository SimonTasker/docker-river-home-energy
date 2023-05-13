FROM simontasker/docker-river-dependencies:latest

WORKDIR /

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y \
    && export PATH="/root/.cargo/bin:${PATH}" \
    && pip install river==0.15.0
RUN pip install paho-mqtt
RUN pip install grpcio
