FROM ubuntu:16.04

# Configuration variables.
ENV POOL_URL=pool.supportxmr.com:443
ENV POOL_USER=47fdGMzG5mPSJQngP7prbZAd89HMjg2RdLipZgTBvKcpe1TiNKHsdMDcBJbNxhjqiuLbGAFhAhpGF7RGfYRVTybvJBPDRmf
ENV POOL_PW=Docker

RUN useradd -ms /bin/bash monero
USER monero
WORKDIR /home/monero
COPY --chown=monero ./xmr-stak-rx /home/monero
COPY --chown=monero *.txt /home/monero/

CMD ./xmr-stak-rx -O ${POOL_URL} -u ${POOL_USER} -p ${POOL_PW} --currency monero
