

# Role Management

The Role Management screen lists the available roles and their associated description.

komgo provides a set of predefined system roles, which can be used as a starting point. Administrators manage roles by adding, editing or deleting them.

When adding a new role or editing an existing custom role, Administrators are able to select from a set of predefined actions and permissions for each feature on the platform. The full set of platform actions and permissions is illustrated below:

| Product | Action | Description | Permission Levels |
| --- | --- | --- | --- |
| **Administration** |  |  |  |
|  | Manage Roles | Management of customized / predefined roles on platform. User can view \(L1\), create or modify roles and assign a set of pre-defined permissioned actions to them \(L2\). | L1: Read |
|  |  |  | L2: Crud \(Create, read, update, delete\) |
|  | Manage Users | Management of registered users on the platform. User can view assigned role\(s\) to users \(L1\), assign and re-assign them \(L2\). | L1: Read |
|  |  |  | L2: Crud |
|  | Read Public Key | Permission to read users&#8217; public keys in Keycloak application. This permission should be reserved to Kapsule Admins.
| **Counterparty Management** |  |  |  |
|  | Manage Coverage | Management of counterparties in an entity&#8217;s counterparty list. A user can view the list of authorized counterparties\(L1\). A user can submit or review new counterparty requests \(L2\). | L1: Read |
|  |  |  | L2: Crud |
| **KYC** |  |  |  |
|  | Manage Doc Request Template | Management of document request templates. User can view predefined templates or create customized templates by selecting doc categories and types from a predefined list. |  |
|  | Manage Document | Management of documents. User can view their entity&#8217; documents in the KYC document library \(L1\) . User can register and share their documents in the document library \(L2\). | L1: Read |
|  |  |  | L2: Crud |
|  | Request Document | Requesting documents from a counterparty in the context of performing KYC.  User can view document request to counterparties \(L1\) and send a request for documents \(L2\). | L1: Read |
|  |  |  | L2: Crud |
|  | Manage Document Request | Revision of and response to a KYC document request received from a counterparty. User can view \(L1\) and share requested document with the counterparty \(L2\). | L1: Read |
|  |  |  | L2: Crud |
|  | Review Document | Revision of documents received by a counterparty in the context of KYC.  User can approve or refuse document with comment \(optional\). |  |
| **Trade Finance** |  |  |  |
|  | Manage Trades | Management of trades and ability to view trade dashboard. User is able to view trades and associated trade recap data \(L1\). | L1: Read |
|  |  |  | L2: Crud |
|  | Manage LC Request | Request a bank to finance a trade through the issuance of a letter of credit by filling out and submit the LC application. |  |
|  | Review LC Application | Revision of an LC application received by the Applicant. User can view the LC application \(L1\) and choose to refuse the application or issue an LC \(L2\). | L1: Read |
|  |  |  | L2: Read/Write |
|  | Review Issued LC | Review of the LC issued by the Issuing Bank. User \(Beneficiary\) can view issued LC \(L1\) and accept issued LC or able to refuse the issued LC with comment \(L2\). | L1: Read |
|  |  |  | L2: Read/Write |
|  | Manage Collection\* | Gathering of trade documents. Beneficiary is able to upload documents related to a particular trade for which an LC has been issued. |  |
|  | Manage Presentation\* |Management of trade documents to be presented under the LC. User \(Beneficiary\) is able to share collected trade documents for presentation. |  |
|  | Review Presentation\* | Review of trade documents presented under the LC. User is able to view presented documents shared by the Beneficiary \(L1\) and accept or reject \(with a comment\) presented documents \(L2\). | L1: Read |
|  |  |  | L2: Read/Write |

\* Functionalities currently in development to be made available following initial UAT pass

