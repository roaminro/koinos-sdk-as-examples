FROM --platform=linux/amd64 node:18

# Install basic development tools
RUN apt update && apt install -y less man-db sudo

# Ensure default `node` user has access to `sudo`
ARG USERNAME=node
RUN echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# Set `DEVCONTAINER` environment variable to help with orientation
ENV DEVCONTAINER=true

# install AS SDK
RUN yarn global add @roamin/sdk-as-cli@1.1.1

# install Local Koinos
RUN yarn global add @roamin/local-koinos@0.4.9