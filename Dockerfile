# Prepare the base environment.
FROM postgres:14
MAINTAINER cybersecurity@dpc.wa.gov.au
LABEL org.opencontainers.image.source https://github.com/wagov/docker-findomain

ENV DOMAINS_CSV_URL changeme
ENV AZCOPY_ARCHIVE changeme

RUN cd /usr/local/bin && curl -LO https://github.com/Findomain/Findomain/releases/latest/download/findomain-linux.zip && \
    unzip findomain-linux.zip && chmod +x findomain && rm findomain-linux.zip
