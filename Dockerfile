FROM djmattyg007/arch-base:2018.01.22-1
MAINTAINER djmattyg007

ENV WKIMAGE_VERSION=2018.01.22-1

# Add install bash script
COPY setup/root/*.sh /root/

# Run bash script to install wkhtmltopdf
RUN /root/install.sh && \
    rm /root/*.sh

ENV WKSERVER_VERSION=0.12.4

COPY wkhtmltox-server /usr/local/bin/

RUN /usr/bin/wkhtmltopdf --version && \
    /usr/bin/wkhtmltopdf --license

EXPOSE 8000
ENTRYPOINT ["/usr/local/bin/wkhtmltox-server"]
