FROM ubuntu:latest
WORKDIR /root/
RUN apt update && apt -y upgrade
RUN apt install -y curl tmux sudo python3 python3-pip git locales jq toilet
RUN rm -rf /var/lib/apt/lists/*
COPY md2.sh .
RUN chmod +x /root/md2.sh
RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
ENTRYPOINT ["/root/md2.sh"]
