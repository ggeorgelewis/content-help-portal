---
product: Technical Guide
capability:
infotype: Overview
audience:
---

# Platform Health Checklist

#### Check if all containers are running

Ensure the following containers are running at all times:

<table>
  <tr>
   <td>#
   </td>
   <td>Name
   </td>
   <td>Type
   </td>
   <td>Purpose
   </td>
  </tr>
  <tr>
   <td>1
   </td>
   <td>komgo-client
   </td>
   <td>Front End
   </td>
   <td>UI Service
   </td>
  </tr>
  <tr>
   <td>2
   </td>
   <td>komgo-api-roles
   </td>
   <td>IAM
   </td>
   <td>Roles Management Service
   </td>
  </tr>
  <tr>
   <td>3
   </td>
   <td>komgo-api-auth
   </td>
   <td>IAM
   </td>
   <td>IAM Service
   </td>
  </tr>
  <tr>
   <td>4
   </td>
   <td>komgo-api-gateway
   </td>
   <td>Business
   </td>
   <td>API Gateway Service
   </td>
  </tr>
  <tr>
   <td>5
   </td>
   <td>komgo-api-notif
   </td>
   <td>Business
   </td>
   <td>Notifications Service
   </td>
  </tr>
  <tr>
   <td>6
   </td>
   <td>komgo-api-users
   </td>
   <td>IAM
   </td>
   <td>Users Management Service
   </td>
  </tr>
  <tr>
   <td>7
   </td>
   <td>komgo-api-signer
   </td>
   <td>Key Signing
   </td>
   <td>Ethereum, RSA Key Generation, Encryption, Signing Service
   </td>
  </tr>
  <tr>
   <td>8
   </td>
   <td>komgo-api-documents
   </td>
   <td>Business
   </td>
   <td>Documents Management (kite) Service
   </td>
  </tr>
  <tr>
   <td>9
   </td>
   <td>komgo-api-registry
   </td>
   <td>Business
   </td>
   <td>ENS Company Registry Management Service
   </td>
  </tr>
  <tr>
   <td>10
   </td>
   <td>komgo-api-coverage
   </td>
   <td>Business
   </td>
   <td>Manage Client Coverage
   </td>
  </tr>
  <tr>
   <td>11
   </td>
   <td>komgo-api-tradefinance
   </td>
   <td>Business
   </td>
   <td>Trade Finance Functions
   </td>
  </tr>
  <tr>
   <td>12
   </td>
   <td>komgo-api-trade-cargo
   </td>
   <td>Business
   </td>
   <td>Trade Cargo Information
   </td>
  </tr>
  <tr>
   <td>13
   </td>
   <td>komgo-keycloak
   </td>
   <td>IAM
   </td>
   <td>Keycloak IAM Server
   </td>
  </tr>
  <tr>
   <td>14
   </td>
   <td>komgo-keycloak-db
   </td>
   <td>Database
   </td>
   <td>Keycloak Database
   </td>
  </tr>
  <tr>
   <td>15
   </td>
   <td>komgo-event-management
   </td>
   <td>Business
   </td>
   <td>Event Management
   </td>
  </tr>
  <tr>
   <td>16
   </td>
   <td>&#60;internal MQ host&#62;
   </td>
   <td>Business
   </td>
   <td>Internal MQ Server
   </td>
  </tr>
  <tr>
   <td>17
   </td>
   <td>mongo
   </td>
   <td>Database
   </td>
   <td>Mongo DB Server
   </td>
  </tr>
</table>