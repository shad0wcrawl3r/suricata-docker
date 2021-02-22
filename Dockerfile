# THe base image that will be used is Ubuntu
FROM ubuntu:latest

# 
RUN apt update

RUN apt install -y software-properties-common wget apt-transport-https

RUN add-apt-repository ppa:oisf/suricata-stable
RUN apt update

RUN wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
# RUN echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list

# RUN apt install -y filebeat

# CMD service suricata start && service filebeat start && tail -F /var/log/suricata/suricata.log