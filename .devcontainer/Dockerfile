# Use an official Python image with Ansible installed
FROM mcr.microsoft.com/vscode/devcontainers/python:3.11-bullseye

# Install Ansible and Azure Collection
RUN pip install --upgrade pip
RUN pip install ansible
RUN ansible-galaxy collection install azure.azcollection
RUN ansible-galaxy collection install community.crypto

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Install common dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*