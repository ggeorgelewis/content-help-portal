---
product: Technical Guide
capability:
infotype: Overview
audience:
---

# Data Persistence and Management


All microservices and front end containers are stateless, and they connect to Mongo DB for persisting the business data.

Keycloak container persists its data to a PostGreSQL db.

There are two options for Member companies:



*   If you have dedicated DBAs that can create and manage MongoDB and PostGreSQL databases, create those databases on separate servers, and configure the connection string in the komgo kapsule docker containers
*    Alternatively, start up the default kapsule docker containers for MongoDB and PostGreSQL, and configure to store/backup the docker storage volume mounted for those containers. The volumes will contain the business data.

It would be the responsibility of Member Company administrators to backup and maintain the storage volumes / external MongoDB, PostGreSQL databases.