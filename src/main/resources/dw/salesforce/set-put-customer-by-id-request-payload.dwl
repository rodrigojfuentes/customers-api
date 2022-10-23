%dw 2.0
output application/json indent=false
---
{
  customerId: vars.customerId,
  firstName: payload.personalInformation.firstName,
  lastName: payload.personalInformation.lastName,
  companyName: payload.personalInformation.companyName,
  email: payload.personalInformation.email,
  phone: payload.personalInformation.phone,
}