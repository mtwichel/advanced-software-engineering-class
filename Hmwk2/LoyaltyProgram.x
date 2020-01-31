b)
context Customer
  inv rentals:rentals->notEmpty
c)
Rental.allInstances->select(daysRented>3)

1)
context LoyaltyAccount::points
init: 0

context CustomerCard::valid
init: true

2)
context LoyaltyProgram
inv atLeastOneService : self.partners->delivedServices->asSet()->size <= 1

3)
loyalyProgram.partners->deliveredServices->asSet()

4)
loyalyProgram

5)


7)
context Customer::birthday()
post ageInc: self.age
