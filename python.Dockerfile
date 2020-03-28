ARG PYTHON_VERSION=3.7

FROM python:${PYTHON_VERSION}

LABEL python_version=${PYTHON_VERSION}

COPY pip.conf /etc/pip.conf
COPY apt.conf /etc/apt/apt.conf
COPY .curlrc /root/.curlrc

CMD ["bash"]