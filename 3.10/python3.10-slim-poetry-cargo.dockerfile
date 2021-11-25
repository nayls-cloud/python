FROM naylscloud/python:3.10-slim-poetry

# Install cargo and rust toolchain
ENV CARGO_PATH=/root/.cargo \
    RUSTUP_TOOLCHAIN_VERSION=1.56.1
ENV PATH="$CARGO_PATH/bin:$PATH"
RUN apt-get update && \
    \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain none -y && \
    rustup toolchain install --profile minimal $RUSTUP_TOOLCHAIN_VERSION && \
    \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/man/
