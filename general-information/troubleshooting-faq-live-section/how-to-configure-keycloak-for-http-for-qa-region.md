---
product: Technical Guide
capability:
infotype: Overview
audience:
---

# How to configure Keycloak for HTTP \(for QA region\)

**Problem:**

If you want to enable keycloak to respond to non https requests normally (DEVELOPMENT ONLY - of course)

**Solution:**

Step-by-step guide



1.  Edit the configure.sh script and add the following lines

    ```
echo "[ Set sslRequired for komgo (and master) realms according to variable ]"
docker exec komgo-keycloak /opt/jboss/keycloak/bin/kcadm.sh update realms/komgo -s sslRequired=$KEYCLOAK_SSL_REQUIRED
docker exec komgo-keycloak /opt/jboss/keycloak/bin/kcadm.sh update realms/master -s sslRequired=$KEYCLOAK_SSL_REQUIRED
```



Attention, these command, one for each realm, only work after the kcadm.sh has been connected with login password which is performed in 

/opt/jboss/keycloak/bin/scripts/keycloak-init.sh



1.  In this script or where you set all your variables, set the KEYCLOAK_SSL_REQUIRED to 
    1.  "none" if you need disabling mandatory https request (DEVELOPMENT ONLY)
    1.  "external" (default) if only requests from outside the docker or docker network should be https
    1.  "all" if all requests should be https 
1.  Restart keycloak docker instance (or all dockers), et voila

