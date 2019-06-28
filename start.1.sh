
##增量订阅binlog
docker run -ti --rm zendesk/maxwell bin/maxwell --bootstrapper=sync --user='maxwell' --password='XXXXXX' --host=192.168.106.87 --rabbitmq_port=5672 --output_binlog_position=true --output_ddl=true --producer=rabbitmq --rabbitmq_host=192.168.109.223 --rabbitmq_user=maxwell --rabbitmq_pass=maxwell --rabbitmq_virtual_host=/DEV --rabbitmq_exchange=maxwell --rabbitmq_exchange_type=topic --rabbitmq_routing_key_template=%db%.%table% --rabbitmq_declare_exchange=true --rabbitmq_exchange_durable=true --rabbitmq_message_persistent=true --rabbitmq_exchange_autodelete=false

