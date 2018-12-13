

# High level flow

After the Member Company completes the business on-boarding<TODO: Include link here to business on-boarding document>, the IT Administrator of the Member Company can start to perform the technical on-boarding steps by working with the komgo support Admin

High level steps are:



*  komgo will 
   *   Send Invitation to Member Company to sign-up and join komgo Blockchain network hosted at [https://kaleido.io](https://kaleido.io) 
*  Member Company IT Administrator will
   *   Accept the invitation, and sign-up at Kaleido. Choose the appropriate support level \(Basic / Pro / Enterprise\) <TODO: Support level selection - where does that happen? Done during business onboarding? How is this configured in Kaleido?>
   *   Create a Blockchain Node in QA and Production networks
   *   Optionally, configure Log-Streaming to receive Blockchain logs into central Corporate repository
   *   Note down the Constellation Public Keys \(To be shared with komgo in future step\)
*  komgo will  
   *   Generate a unique multi-network identifier \(komgo MNID\) for the Company, add the company to "komgo Company Registry" \(stored in the komgo Blockchain network using Ethereum Name Service \(ENS\) Contracts\). 
   *   Record Member Company's Legal Name, address, Country code in the Company Registry as provided during the business on-boarding.
   *   Generate Harbor user id/password. 
   *   Generate Member Company credentials for komgo Common Broker access
   *   Generate Member Company credentials in komgo Keycloak Server \(for komgo API access\) [Not needed for first release. Post Nov]
   *   Send all of the above information in an encrypted email to the contact email provided during business onboarding.
*  Member Company IT Administrator will
   *   Open Harbor ip/ports so that deployment server can access the repository
   *   Access Harbor to download the reference scripts, adopt those and create scripts based on Member Company's specific requirements
   *   Configure all secrets in the env file \(will be managed via keyVault in future\)
   *   Download and run the docker images \(via docker-compose or kubernetes\)
   *   Generate Company Ethereum Signing Keys
   *   Generate Company RSA Signing / Encryption Keys
   *   Send Blockchain Constellation Public Key, Ethereum Signing Key, RSA Signing Key to komgo via secure email
*  komgo will
   *   Validate the Keys
   *   If Member Company is pre-authorized to be a "Validator node" \(as part of business onboarding\), promote it at this point
   *   Activate the Common Broker account for the Member Company, create Company specific Exchanges, Queues
   *   Publish the Member Company Constellation Keys in komgo Company Registry
   *   Send "GOOD TO GO" Notification
*  Member Company Administrator will
   *   Start the services
   *   Perform Environment Health Check
   *   Communicate to komgo that they are "UP AND RUNNING"