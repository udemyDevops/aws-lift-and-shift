# Prerequisites
#
- JDK 17 or 21
- Maven 3.9
- MySQL 8

# Technologies 
- Spring MVC
- Spring Security
- Spring Data JPA
- Maven
- JSP
- Tomcat
- MySQL
- Memcached
- Rabbitmq
- ElasticSearch
# Database
Here,we used Mysql DB 
sql dump file:
- /src/main/resources/db_backup.sql
- db_backup.sql file is a mysql dump file.we have to import this dump to mysql db server
- > mysql -u <user_name> -p accounts < db_backup.sql


* In cloud, use ALB instead of nginx as frontend and ec2 instances for other services. Othr cloud services are also used like r53, auto-scaling for tomcat, s3, aws certificate manager to allow only https 

- 3 security groups
    * ALB
    * tomcat
    * backend
- user request to ALB on 443 or 80 if not using certificate
- ALB to tomcat on 8080
- Tomcat to backend
    * MySql on 3306
    * RabbitMQ on 5672
    * Memecache on 11211
    * these ports are in src/main/resources/application.properties
- allow all within the backend
- Also port 22 to ssh the above services

![alt text](aws-arch.png)

