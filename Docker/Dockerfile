# THe base image that will be used is Ubuntu
FROM ubuntu:latest


# update the apt repos
RUN apt update

# install tools to add repositories
RUN apt install -y software-properties-common wget apt-transport-https net-tools

# install the repository for filebeat and suricata
RUN add-apt-repository ppa:oisf/suricata-stable
# RUN wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
# RUN echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list


# another update to apt repo to refresh the list
RUN apt update

# install filebeat and suricata
RUN apt install -y suricata jq
# RUN apt install -y filebeat

#add the config files
ADD config/suricata.yaml /etc/suricata/suricata.yaml
# ADD config/filebeat.yml /etc/filebeat/filebeat.yml
# RUN chown root /etc/filebeat/filebeat.yml
# RUN chmod 0644 /etc/filebeat/filebeat.yml

#start the services and tail the logfile to keep the container alive
# CMD service suricata start && service filebeat start && tail -F /var/log/suricata/suricata-start.log
CMD service suricata start && tail -F /var/log/suricata/suricata-start.log

