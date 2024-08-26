FROM python:3
# Install additional tools:
RUN apt-get update && \
    apt-get install -y \
    python3 \
    python3-pip \
    curl \
    yq \
&& curl -fsSL https://deb.nodesource.com/setup_21.x | bash - \
    && apt-get install -y nodejs
# Install pip3 (already installed with python:3 image) and upgrade pip
RUN pip3 install --upgrade pip
RUN pip install cdktf
#RUN npm install -g cdktf-cli@0.20.0
RUN pip install cdktf-cdktf-provider-aws
# Install pipenv
RUN pip install pipenv
# Set working directory
WORKDIR /app
# Verify installations
RUN python3 --version && \
    pip3 --version && \
    yq --version && \
    cdktf --version && \
    node --version
CMD ["/bin/sh"]
