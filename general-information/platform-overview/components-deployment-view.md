---
product: Technical Guide
capability:
infotype: Overview
audience:
---

# Components (Deployment View)

#### Kaleido Quorum Blockchain Node

komgo platform uses Quorum 2.1.0 with Istanbul BFT Consensus. Transactions between participants are recorded in Private Smart Contracts on the Quorum Blockchain. The komgo Address book / Company registry is also managed as a Public Smart Contract on the same network.

The blockchain nodes are fully managed by Kaliedo \([https://kaleido.io](https://kaleido.io)\), a Blockchain SaaS offering from Consensys. 



*   Every member company would independently register with Kaleido and create an Account
*   For fully-managed members, komgo will create a separate Kaleido account on behalf of each member
*    As part of onboarding process, komgo will send an invite to the newly created kaleido account to allow the account to create a quorum node and join the komgo blockchain network
*   komgo will maintain a production network, and a QA network. Member companies will be able to join to both networks using different Kaleido Accounts \(it is strongly discouraged to use the same kaleido account to join both QA and PROD networks\)

#### Keycloak Identity Management

komgo Application uses Keycloak Identity Management server for Authentication and Access Control.



*   Every member will run their own keycloak instance in docker containers \(hosted on-premise or on cloud, or fully managed by komgo\)
*   Member company administrator will setup users, roles, and permissions. This keycloak instance can also be interfaced with Company's identity management server for single-sign on. 
*   Keycloak uses PostGreSQL for persisting the IAM data. Companies can choose to host the PostGre DB on docker as well, or create a DB in their infrastructure, and provide the connection details to the keyclock instance
*   komgo will run a keycloak instance that will be setup with service accounts for all members and partner platforms. These credentials will be used by the member companies to connect to various platform services

#### RabbitMQ Message Broker

komgo platform uses Advanced Message Queueing Protocol \(AMQP 0.91\) messaging using Rabbit MQ for communication between member nodes and partner platforms (between Bank and Corporate, Bank to Bank, Corporate on komgo and Corporate on VAKT Partner platform, etc)



*   komgo hosts a "Common Broker" that will contain "One Exchange" per member. Members can send and receive messages through this exchange
*   Members will be issued a "Static ID" by komgo, that will be used for addressing the participants on the messages.
*   Each Member will host an "Internal RabbitMQ Broker" that will be used by the microservices to interact asynchronously with each other. 

#### MongoDB

Every member node will maintain a local MongoDB, among other things, it will contain 



*   cache of all blockchain transactions for that member, 
*   cache of all reference data \(received from komgo rest API\), 
*   cache of all documents (received from member companies via RabbitMQ messages)
*   Draft data entered in UI
*   User preferences
*   Audit tracking of all user actions

Members can choose to host MongoDB inside the docker container, or create a DB in their infrastructure, and provide the connection details to all the docker containers that access the DB

#### Microservices API, Gateway

Every member node will run a node.js based API Gateway and several microservices \(provided as docker images by komgo\). The microservices perform all business rules / workflows, and support the Front End Application. Access control for the services will be via Keycloak.

#### Front-end Application

Every member node will run a react based front-end application, delivered as a docker image. The front end application will connect to the micro-services, and will be access controlled via keycloak.

#### Kubernetes Cluster

All the docker images delivered by komgo are compatible with Kubernetes, and can be deployed in a Kubernetes cluster. 

It would be the responsibility of the Member Company to manage the kubernetes cluster configuration, komgo will not provide the configuration.

The fully managed instances managed by komgo are being deployed on a Kubernetes cluster.

Troubleshooting Kubernetes configurations would be the responsibility of Member Companies, and komgo will not provide support.

#### Log streaming

komgo services write logs in a logstash compatible format, and can be routed to any log monitoring platform such as Kibana.

Kaleido supports AWS CloudWatch for Log streaming, and CloudWatch can be configured to export or stream logs to other end points.

#### Topology - Fully Managed offering \(Hosting by komgo/Consensys\)
