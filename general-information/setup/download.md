---
product: Technical Guide
capability:
infotype: Overview
audience:
---

# Download

komgo provides a docker-compose file as a convenience, that pulls the compatible versions of all necessary docker images. These scripts are for reference only, companies need to create their own scripts based on their security policies.

Several templates are provided:

*   Default \(run all components as docker images, microservices using unsecured http. Must not be used for Production\)
*   External DB \(run all services in docker, connecting to MongoDB and PostGre db hosted externally\)
*   Ssl \(run all components as docker images, microservices using https\)
*   Ssl  Segregated \(runs all components as docker images, komgo node is segregated into Data zone, Business zone, and and Presentation zone\)
   * Data zone has keycloak DB, Mongo DB
   * Presentation zone has UI docker containers
   * Business zone has all other containers including microservices, Rabbit MQ, etc.

Download the files into the server from where the images will be run.

Currently, these images are uploaded to bitbucket, and early adopters are granted access. In future, this will be streamlined, and probably made available via Harbor as well.