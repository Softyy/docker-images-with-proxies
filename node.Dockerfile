ARG NODE_VERSION=13.10

FROM node:${NODE_VERSION}

LABEL node_version=${NODE_VERSION}

COPY .npmrc /root/.npmrc
COPY apt.conf /etc/apt/apt.conf
COPY .curlrc /root/.curlrc

CMD ["bash"]
