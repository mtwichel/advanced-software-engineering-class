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
inv atLeastOneService : self.partners->delivedServices->asSet()->size() >= 1

3)
context LoyaltyProgram::getServices(): Set(Service)
body: result := self.partners->deliveredServices->asSet()

4)
context LoyaltyProgram::getServicesForPartnerProgram(pp: ProgramPartner) : Set(Service)
body: if self.partners->includes(pp)
        then result := pp->deliveredServices->asSet()
      else result := Set{}
      end

5)
context Service
inv burnLessThanEarned: self.pointsEarned >=self.pointsBurned

context ProgramPartner
inv burnLessThanEarnedServices: self.deliveredServices->forAll(s:Service | s.pointsEarned >=s.pointsBurned)
6)

context LoyaltyProgram
inv noAccounts: partners.deliveredServices->forAll(pointsEarned)

7)
context Customer::birthday()
post ageInc: self.age
