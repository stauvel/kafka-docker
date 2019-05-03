
docker-compose exec connect-debezium bash -c '/scripts/create-pg-source.sh'
#TODO creer connecteurs
# dc exec ksql bin/bash -c 'ksql  <<< "SHOW TOPICS;
# CREATE STREAM ACCOUNT_SRC WITH (KAFKA_TOPIC='dbz.public.account', VALUE_FORMAT='AVRO');
# CREATE STREAM ACCOUNT_SRC_REKEY WITH (PARTITIONS=1) AS SELECT * FROM ACCOUNT_SRC PARTITION BY number;

# psql then wait... 

# CREATE TABLE ACCOUNTS WITH (KAFKA_TOPIC='ACCOUNT_SRC_REKEY', VALUE_FORMAT ='AVRO', KEY='ID');
# SHOW STREAMS;
# exit"
# '

