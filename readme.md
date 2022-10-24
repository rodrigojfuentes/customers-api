# Customers API
MuleSoft application can be cloned and packaged right away. No private or local dependencies used.

## Assumptions
<b>When creating Customer API is responsible for customer id generation (GUID)</b>: Application assigns a random GUID via ``uuid()`` when creating a new Customer.

## Functional requirements
- Reseller can create a customer
- Reseller can update the customer
- Reseller can retrieve the customer by CustomerID

## Non-functional requirements
- If one of destination systems is unavailable, none of customer data should be accepted
- Anypoint Monitoring (and logging) is used
- Resellers are authorized using basic authentication
- There is at least one positive and negative test case for each use case
