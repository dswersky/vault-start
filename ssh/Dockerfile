FROM ubuntu:16.04

RUN apt-get update && apt-get install -y openssh-server
ADD config.hcl /etc/vault-ssh-helper.d/config.hcl
ADD vault-ssh-setup.sh /root/vault-ssh-setup.sh
ADD .bash_profile /root/.bash_profile

RUN mkdir /var/run/sshd && \
    echo 'root:vaultpwd' | chpasswd && \
    sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    apt-get update && \
    apt-get install -y iputils-ping && \
    apt-get install -y unzip && \
    apt-get install -y nano && \
    apt-get install -y mysql-client && \
    wget https://releases.hashicorp.com/vault/0.10.3/vault_0.10.3_linux_amd64.zip && \
    unzip vault_0.10.3_linux_amd64.zip && \
    mv vault /bin && \
    rm vault_0.10.3_linux_amd64.zip


# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]