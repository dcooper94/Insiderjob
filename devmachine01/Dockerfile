FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install core dev and debugging tools
RUN apt-get update && apt-get install -y \
    cron \
    nano \
    vim \
    curl \
    wget \
    git \
    file \
    iputils-ping \
    net-tools \
    procps \
    python3 \
    python3-pip \
    gcc \
    make \
    unzip \
    less \
    sudo \
    lsof \
    tini && \
    useradd -ms /bin/bash devuser

# Add challenge artifacts
COPY maintenance.sh /usr/local/bin/maintenance.sh
COPY user_data/ /home/devuser/
COPY startup.sh /opt/.boot/startup.sh
# Generate flag at runtime
RUN echo 'coops{first_blood_cron_pwn}' > /root/flag.txt && chmod 600 /root/flag.txt

# Permissions and ownership
RUN chmod +x /opt/.boot/startup.sh && \
    ln -s /usr/local/bin/maintenance.sh /opt/maintenance.sh && \
    chown root:devuser /usr/local/bin/maintenance.sh && \
    chmod 770 /usr/local/bin/maintenance.sh && \
    mkdir -p /opt/sysadmin/logs && \
    touch /opt/sysadmin/logs/output.log && \
    chmod 777 /opt/sysadmin/logs/output.log && \
    chown -R devuser:devuser /home/devuser && \
    chmod +x /home/devuser/scripts/*.sh /home/devuser/scripts/*.py

# Setup cronjob
RUN echo "* * * * * root /opt/maintenance.sh" >> /etc/crontab

# Use tini and custom startup script
ENTRYPOINT ["/usr/bin/tini", "--"]
CMD ["/opt/.boot/startup.sh"]


