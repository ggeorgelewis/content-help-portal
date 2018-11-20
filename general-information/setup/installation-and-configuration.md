---
product: Technical Guide
capability:
infotype: Overview
audience:
---

# Installation and Configuration

Installation involves the following steps:



*   Create a .env file \(copy from sample .env file provided\), and configure the following:
    *   Kaleido host, userid, password
    *   Keycloak auth url \(replace localhost with your domain name\)
    *   Access control allow origin url \(replace localhost with your domain name\)
    *   Common Broker userid, password
    *   HTTP / HTTPS Proxy address \(if your organization uses proxy servers\)
*   Login to Harbor registry
*   Start the docker images by running "docker-compose up"
*   Configure the components
    *   Setup API roles
    *   Setup reference data for Documents
    *   Configure Keycloak
    *   Configure Rabbit MQ Local Broker
*   Restart all microservices

![](/assets/technical_guide_21.png)

The specific commands will be provided in the readme file, and the file will be updated with relevant changes for every release. Please follow that for detailed instructions.

<TODO: The specific setup instructions for each release will be entered in to a .md file by developers/devops. This file will be converted into release document/technical guide html by the script/tool being built by 3di. Post MVP Phase 1. In the interim, the installation instructions will be provided in the readme.md file under each docker image>