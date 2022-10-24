%dw 2.0
output application/java
---
{
  customerId: vars.customerId,
  personalInformation: {
    firstName: payload.personalInformation.firstName,
    lastName: payload.personalInformation.lastName,
    companyName: payload.personalInformation.companyName,
    email: payload.personalInformation.email,
    phone: payload.personalInformation.phone,
    address: payload.personalInformation.address map ((item) -> {
        street: item.street,
        houseNumber: item.houseNumber,
        city: item.city,
        country: item.country,
        postalCode: item.postalCode
    })
  }
}