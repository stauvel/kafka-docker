curl -i -X POST \
    -H "Accept:application/json" \
    -H  "Content-Type:application/json" \
    http://connect-debezium:8083/connectors/ -d '
    {
        "name": "psql-dbz",
        "config": {
            "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
            "tasks.max": "1",
            "database.hostname": "postgres",
            "database.port": "5432",
            "database.user": "postgres",
            "database.password": "postgres",
            "database.dbname" : "postgres",
            "database.server.name": "dbz",
            "database.history.kafka.bootstrap.servers": "kafka:9092",
            "database.history.kafka.topic": "schema-changes.pg",
            "transforms": "unwrap,InsertTopic,InsertSourceDetails",
            "transforms.unwrap.type": "io.debezium.transforms.UnwrapFromEnvelope",
            "transforms.InsertTopic.type":"org.apache.kafka.connect.transforms.InsertField$Value",
            "transforms.InsertTopic.topic.field":"messagetopic",
            "transforms.InsertSourceDetails.type":"org.apache.kafka.connect.transforms.InsertField$Value",
            "transforms.InsertSourceDetails.static.field":"messagesource",
            "transforms.InsertSourceDetails.static.value":"Debezium CDC from Postgres"
        }
    }'
