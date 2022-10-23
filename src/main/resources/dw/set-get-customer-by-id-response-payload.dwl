%dw 2.0
output application/json
var dbPayload = payload
---
{
  customerId: dbPayload.customerId,
  personalInformation: {
    firstName: dbPayload.personalInformation.firstName,
    lastName: dbPayload.personalInformation.lastName,
    companyName: dbPayload.personalInformation.companyName,
    email: dbPayload.personalInformation.email,
    phone: dbPayload.personalInformation.phone,
    address: dbPayload.address map ((item) -> {
        street: item.street,
        houseNumber: item.houseNumber,
        city: item.city,
        country: item.country,
        postalCode: item.postalCode
    })
  }
}