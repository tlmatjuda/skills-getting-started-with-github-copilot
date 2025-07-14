FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install Git (latest)
RUN apt-get update && \
    apt-get install -y git && \
    git --version

# Install Node.js, npm, and ESLint
RUN apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_current.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g eslint

# Install Python3, pip3, and Python extensions
RUN apt-get install -y python3 python3-pip

# Set up workspace
WORKDIR /workspaces/skills-getting-started-with-github-copilot