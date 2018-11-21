---
product: Technical Guide
capability:
infotype: Overview
audience:
---

# How to fix “Permission Denied” error on Internal RabbitMQ Broker

**Problem:** 

With the latest version of docker-compose-project, which includes RMQ, some issues arise in_ komgo-internal-mq_ container initialization. The problem is related to volumes' creation on host: since docker engine runs with root access, the folders are created with root owner/group. This leads to a problem when the start/configure scripts are executed with non root user (_komgo-internal-mq_ never starts and configuration fails).

Running as single server

/usr/lib/rabbitmq/bin/rabbitmq-server: 51: /usr/lib/rabbitmq/bin/rabbitmq-server: cannot create 
/var/lib/rabbitmq/mnesia/rabbit@komgo-internal-mq.pid: Permission denied

Failed to write pid file: /var/lib/rabbitmq/mnesia/rabbit@komgo-internal-mq.pid

**Workaround: **

Giving full permissions on volumes' folders would probably bring security issues in production, so a possible solution is to create the folders with a more limited set of permissions. 

The idea is to create the folders beforehand, change their group to _docker_ and permissions to _770 (-rwxrwx—)_, e.g:

```
sudo mkdir .rabbitmqdata
sudo chgrp -R docker .rabbitmqdata
sudo chmod -R 770 .rabbitmqdata
```

![](/assets/technical_guide_22.png)

With this set of permissions non-root users can write files in the volumes and start/configure scripts run with no errors.

**Note:** As you can see,_ .keycloak-db_ folder's owner is 999 (unknown user). This happens after running the start script, probably because the user inside docker engine acquires ownership of the folder. This needs further investigation.