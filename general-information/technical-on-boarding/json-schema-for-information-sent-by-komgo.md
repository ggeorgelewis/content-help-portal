---
product: Technical Guide
capability:
infotype: Overview
audience:
---

# JSON Schema for Information Sent by komgo
{
    "staticId": UUIDV4_String,
    "x500Name": {
    "CN":"Display Name",
    "O": "Legal Name",
    "C": "Country Code alpha two letter",
    "L": "Locality",
    "STREET": "address",
    "PC": "post code"
    }
    "hasSWIFTKey": boolean,
    "isFinancialInstitution":boolean,
    "isMember":boolean,
    "komgoMnid": UUIDV4_String,
    "rabbitMQCommonUser": komgoMnid,
    "rabbitMQCommonPassword": 32bytes alpa-numeric password,
    <font color="green">"rabbitMQInternalAdmin":"admin",
    "rabbitMQInternalPassword":32bytes alpa-numeric password,
    "rabbitMQInternalCookie":32bytes alpa-numeric password,
    "keycloackPassword":32bytes alpa-numeric password,
    "keycloackPostgresqlPassword":32bytes alpa-numeric password,</font>
    "harbourUser": staticId,
    "harbourPassword":32bytes alpa-numeric password,
    "ensAddress":hex string
}


Attributes in "Black" are information assigned to the Member Company by komgo. They must be used to configure the env file

Attributes in "<font color="green">Green</font>" are sample entries, Member Companies are strongly encouraged to not use the provided password, and generate their own.

All passwords are one-time use passwords, Member Companies must change them upon first login. <TODO: Is this true? Can they change their COMMON Broker password? Especially when their account is only setup after they sign up?>

