---
product: Technical Guide
capability:
infotype: Overview
audience:
---

# Logging on

If you followed the sample script provided, the following are the default ports/urls to connect to the application:


**Front end:**
http://&#60;yourdomain&#62;:8080
https://&#60;yourdomain&#62;:8082 (if using https)

Login using keycloak admin user id (specified under KEYCLOAK_USER in the .env file, password available in the "Onboarding.json" under the key "keycloackPassword"


Alternatively, if users are bulk imported as part of configure.sh, then login using the first user in the "users.csv" file.

<TODO: Insert screenshot of login page with branding>

Ensure you land on the komgo Home Page for the user.

<TODO: Insert screenshot with branding>