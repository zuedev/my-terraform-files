FROM ubuntu:20.04

WORKDIR /app

# get apt lists
RUN apt update

# install & enable fish shell
RUN apt install -y fish && \
    chsh -s /usr/bin/fish

# install terraform
RUN apt install -y gnupg software-properties-common && \
    wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null && \
    gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint && \
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list && \
    apt update && \
    apt install -y terraform

# clean up
RUN apt clean && rm -rf /var/lib/apt/lists/*

# print terraform version
RUN terraform -version