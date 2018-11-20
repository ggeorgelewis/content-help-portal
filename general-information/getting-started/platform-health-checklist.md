---
product: Technical Guide
capability:
infotype: Overview
audience:
---

# Platform Health Checklist

#### Check if all containers are running

Ensure the following containers are running at all times:

| #  | Name                   | Type        | Purpose                                                   |
|----|------------------------|-------------|-----------------------------------------------------------|
| 1  | komgo-client           | Front End   | UI Service                                                |
| 2  | komgo-api-roles        | IAM         | Roles Management Service                                  |
| 3  | komgo-api-auth         | IAM         | IAM Service                                               |
| 4  | komgo-api-gateway      | Business    | API Gateway Service                                       |
| 5  | komgo-api-notif        | Business    | Notifications Service                                     |
| 6  | komgo-api-users        | IAM         | Users Management Service                                  |
| 7  | komgo-api-signer       | Key Signing | Ethereum, RSA Key Generation, Encryption, Signing Service |
| 8  | komgo-api-documents    | Business    | Documents Management (kite) Service                       |
| 9  | komgo-api-registry     | Business    | ENS Company Registry Management Service                   |
| 10 | komgo-api-coverage     | Business    | Manage Client Coverage                                    |
| 11 | komgo-api-tradefinance | Business    | Trade Finance Functions                                   |
| 12 | komgo-api-trade-cargo  | Business    | Trade Cargo Information                                   |
| 13 | komgo-keycloak         | IAM         | Keycloak IAM Server                                       |
| 14 | komgo-keycloak-db      | Database    | Keycloak Database                                         |
| 15 | komgo-event-management | Business    | Event Management                                          |
| 16 | <internal MQ host>     | Business    | Internal MQ Server                                        |
| 17 | mongo                  | Database    | Mongo DB Server                                           |

Command: 
docker ps -a

Expected Output:
<TODO: include docker ps output here>

#### Check if all containers are running

Open the Web application url from a browser, and login to the application
Verify the logs of the docker container komgo-api-gateway
Ensure that 200 OK status is shown

Command:
Docker logs komgo-api-gateway

Expected Output:
```
172.18.0.1 - - [20/Sep/2018:08:50:20 +0000] "GET / HTTP/1.1" 200 649 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36"
```

#### Check if all microservices started

For every docker container whose name starts with komgo-api-*, verify the logs

Ensure that "Server Started!" message is shown

Command:
Docker logs komgo-api-<servicename>

Expected Output:
```
info:
------------
Server Started!
------------

info: listening on port 80
```

#### Check if keycloak server started

Verify the docker logs for komgo-keycloak container

Ensure that the log states "Keycloak 4.1.0 Final \(WildFly core 3.0.8 Final\) started in nnnnn ms - Started" \(note, the version numbers may be different in your output\)

Command:
Docker logs komgo-keycloak

Expected Output:
```
13:26:00,308 INFO [org.jboss.as.server] (ServerService Thread Pool -- 45) WFLYSRV0010: Deployed "keycloak-server.war" (runtime-name : "keycloak-server.war")
13:26:00,378 INFO [org.jboss.as.server] (Controller Boot Thread) WFLYSRV0212: Resuming server
13:26:00,383 INFO [org.jboss.as] (Controller Boot Thread) WFLYSRV0060: Http management interface listening on http://127.0.0.1:9990/management
13:26:00,383 INFO [org.jboss.as] (Controller Boot Thread) WFLYSRV0051: Admin console listening on http://127.0.0.1:9990
13:26:00,383 INFO [org.jboss.as] (Controller Boot Thread) WFLYSRV0025: Keycloak 4.1.0.Final (WildFly Core 3.0.8.Final) started in 14464ms - Started 546 of 882 services (604 services are lazy, passive or on-demand)
```

#### Check if RabbitMQ Broker started
Verify the docker logs for komgo-internal-mq container

Ensure that the log states ```accepting AMQP connection```

Command:
Docker logs komgo-internal-mq

Expected Output:
```
2018-09-20 13:26:18.911 [info] <0.581.0> accepting AMQP connection <0.581.0> (172.19.0.13:48154 -> 172.19.0.9:5672)
2018-09-20 13:26:18.978 [info] <0.581.0> connection <0.581.0> (172.19.0.13:48154 -> 172.19.0.9:5672): user 'komgoInternalUser' authenticated and granted access to vhost '/'
```






