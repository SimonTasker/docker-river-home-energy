FROM simontasker/docker-river-dependencies:latest

WORKDIR /

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN pip install river
RUN pip install paho-mqtt
RUN pip install grpcio