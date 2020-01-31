--create customers
!create cust1:Customer;
!set cust1.name:='Brady'

!create cust2:Customer;
!set cust2.name:='Marcus'

-- create movie library
!create mov1:Movie;
!create mov2:Movie;
!create mov3:Movie;

!set mov1.title:='Jo Jo Rabbit';
!set mov1.priceCode:=PriceCode::regular;
!set mov2.title:='1917';
!set mov2.priceCode:=PriceCode::newRelease;
!set mov3.title:='Little Women';
!set mov3.priceCode:=PriceCode::family;

-- Brady rents Jo Jo Rabbit for 4 days
!create rental1:Rental;
!insert (cust1, rental1) into custRentals;
!insert (rental1, mov1) into movRental;
!set rental1.daysRented:= 4;

-- Brady rents 1917 for 2 days
!create rental2:Rental;
!insert (cust1, rental2) into custRentals;
!insert (rental2, mov2) into movRental;
!set rental2.daysRented:= 2;

-- Marcus rents Little Women for 8 days (so he can watch it 8 times)
!create rental3:Rental;
!insert (cust2, rental3) into custRentals;
!insert (rental3, mov3) into movRental;
!set rental3.daysRented:= 8;

!cust1.Statement()
!cust1.getTotalCharge()

!cust2.Statement()
!cust2.getTotalCharge()

check
