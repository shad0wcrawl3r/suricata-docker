# suricata-docker
A docker implementation of suricata combined with the Elasticsearch, Kibana, and Logstash.


Network Data passes in the following manner:

HOST >> Suricata w/ filebeat >> Logstash >> Elasticsearch >> Kibana