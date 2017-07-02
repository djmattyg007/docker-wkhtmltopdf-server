FROM djmattyg007/arch-base:2017.07.03-4
MAINTAINER djmattyg007

ENV WKIMAGE_VERSION=2017.07.02-1

# Add install bash script
COPY setup/root/*.sh /root/

# Run bash script to install wkhtmltopdf
RUN /root/install.sh && \
    rm /root/*.sh

ENV WKSERVER_VERSION=0.12.4

COPY wkhtmltox-server /usr/local/bin/


#WORKDIR /tmp
#RUN echo http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
#    apk --update add ca-certificates curl libgcc libsm libstdc++ libxrender ttf-dejavu xvfb && \
#    curl -s -L -o wkhtmltox.tar.xz https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/${WK_VERSION}/wkhtmltox-${WK_VERSION}_linux-generic-amd64.tar.xz && \
 #   tar -x -f wkhtmltox.tar.xz && \
  #  chown -R root: wkhtmltox && \
#    mv wkhtmltox /usr/local/ && \
#    rm wkhtmltox.tar.xz && \
 #   apk del curl libcurl && \
 #   rm -rf /var/cache/apk

#RUN ls -lah /usr/lib
#RUN ls -lah /usr/local/wkhtmltox/bin && \
#    /usr/local/wkhtmltox/bin/wkhtmltopdf --license

#WORKDIR /
#COPY wkhtmltox-server /usr/local/bin/wkhtmltox-server
#ENV PATH="/usr/local/wkhtmltox/bin:${PATH}"
RUN /usr/bin/wkhtmltopdf --version && \
    /usr/bin/wkhtmltopdf --license

EXPOSE 8000
ENTRYPOINT ["/usr/local/bin/wkhtmltox-server"]
