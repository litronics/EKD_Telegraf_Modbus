ARG TELEGRAF_VERSION

FROM telegraf:${TELEGRAF_VERSION}

RUN echo "deb http://http.us.debian.org/debian stable main contrib non-free" >> /etc/apt/sources.list.d/sources.list
RUN apt -y update && apt -y upgrade
RUN apt install -y unzip wget snmp-mibs-downloader
RUN sed -i 's/mibs :/#mibs :/g' /etc/snmp/snmp.conf
RUN download-mibs
RUN usermod -aG root telegraf
COPY snmp/mibs/qnap.mib /usr/share/snmp/mibs/QNAP-MIB.txt

USER telegraf

#COPY --chown=telegraf:telegraf --chmod=740 entrypoint_new.sh /entrypoint_new.sh
#ENTRYPOINT ["/entrypoint_new.sh"]
#CMD ["telegraf"]
