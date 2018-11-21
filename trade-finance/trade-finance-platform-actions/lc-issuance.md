---
product: Trade Finance
capability: actions
infotype: task
audience:
---

# LC Issuance

The Issuing Bankreceives access to the read-only LC-application.

To complete the action, the user at the Issuing Bank must click _**Accept LC**_, upload an LC document and add an _**Issuing Bank LC reference**_. The LC document can be a _**MT700 message**_ or for non-swift LCs (for example a direct LC to Beneficiary) a Bank headed LC document. After this is done, a notification of the uploaded and shared LCdocument is sent to the following  shared parties:

**For non-direct LCs (has Advising Bank on participants screen):**

* Applicant and Advising Bank

**For direct LCs (No Advising Bank on participants screen)**

* Applicant and Beneficiary

#### Accepted LC message to VAKT

If the LC application is accepted by the Issuing Bank, komgo sends a notification to the stakeholders \(buyer &amp; seller\) on the VAKT trading platform to inform them that the LC has been issued.

#### Reject LC

An Issuing Bank can reject the LC received from its Applicant if required by clicking _**Reject**_. The Issuing Bank can also choose to include a rejection comment. After this is done, a notification of the rejection is sent to the Applicant.

#### Rejected LC message to VAKT

komgo sends a notification to the operator on the VAKT trading platform to inform them that the LC application has been rejected.

#### Reapply for LC

Applicants can click _**Reapply for LC**_ on the Trade Details screen or Trade Dashboard for a trade with status shown as_LC request rejected_.

An applicant can send a new re-application form under the same conditions as the _**Apply for LC**_ button. This includes sending notifications, tasks and VAKT-messages as per the _**Apply for LC**_ button.