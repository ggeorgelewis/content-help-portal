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

**172.18.0.1 - - [20/Sep/2018:08:50:20 +0000] "GET / HTTP/1.1" 200 649 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36"**