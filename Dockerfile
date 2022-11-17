FROM praqma/network-multitool:extra

# install packages
RUN apk update \
        && apk add \
        iperf \
        python3 \
        py3-pip

# install dependencies with pip
RUN pip3 install --no-cache-dir ipython scapy requests python-whois

# create directory for file to download
RUN mkdir -p data/traces

# copy trace files to download dir
COPY data/*.* data/traces/

COPY nginx.conf /etc/nginx/nginx.conf