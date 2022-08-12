sleep 1
vault secrets disable secret
vault secrets enable -path=secret kv
vault write secret/application eureka.instance.hostname=localhost \ eureka.client.service-url.defaultZone=http://eureka:password@localhost:8761/eureka/
vault write secret/user-read-service spring.datasource.url=jdbc:postgresql://localhost:5433/my_database \ spring.datasource.username=postgres \ spring.datasource.password=my_password
vault write secret/user-write-service spring.datasource.url=jdbc:postgresql://localhost:5432/my_database \ spring.datasource.username=postgres \ spring.datasource.password=my_password \ spring.rabbitmq.host=localhost \ spring.rabbitmq.port=5672 \ spring.rabbitmq.username=guest \ spring.rabbitmq.password=guest
vault write secret/hackathon-write-service spring.datasource.url=jdbc:postgresql://localhost:5434/hackathon_db \ spring.datasource.username=postgres \ spring.datasource.password=qwerty