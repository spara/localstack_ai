FROM quay.io/jupyter/minimal-notebook

USER root

# adding tools to build llama-cpp-python wheel
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    g++ \
    make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set up a virtual environment to isolate our package dependencies globally
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Upgrade pip and setuptools
RUN pip install --upgrade pip setuptools