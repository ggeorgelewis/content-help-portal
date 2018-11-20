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