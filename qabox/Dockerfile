FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install necessary tools
RUN apt-get update && apt-get install -y \
    openssh-server \
    sudo \
    iputils-ping \
    net-tools \
    curl \
    vim \
    nano \
    file \
    cron \
    procps && \
    apt-get clean

# Create qauser and set password
RUN useradd -ms /bin/bash qauser && echo 'qauser:infragon' | chpasswd && adduser qauser sudo

# Setup SSH
RUN mkdir /var/run/sshd
RUN echo 'PermitRootLogin no' >> /etc/ssh/sshd_config
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
EXPOSE 22

# Setup QA secrets and notes
RUN mkdir -p /opt/ci-secrets && \
    echo 'infragon:jenkins!g0tD3vBuilds2025' > /opt/ci-secrets/.jenkins_token && \
    chmod 600 /opt/ci-secrets/.jenkins_token && \
    chown qauser:qauser /opt/ci-secrets/.jenkins_token

RUN mkdir -p /home/qauser && \
    echo '- Jenkins login token kept in /opt/ci-secrets/.jenkins_token\n- Runner scripts still mount /opt/ci-scripts automatically\n- AdminBox no longer reachable from here... only JenkinsCI' > /home/qauser/notes.txt && \
    chown -R qauser:qauser /home/qauser/notes.txt

# Copy entrypoint script
COPY entrypoint.sh /opt/.boot/entrypoint.sh
RUN chmod +x /opt/.boot/entrypoint.sh

ENTRYPOINT ["/opt/.boot/entrypoint.sh"]
