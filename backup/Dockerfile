FROM ubuntu:24.04
RUN apt update && apt install -y cron tar
COPY scripts/backup.sh /backup.sh
RUN chmod +x /backup.sh
CMD cron && tail -f /var/log/syslog
