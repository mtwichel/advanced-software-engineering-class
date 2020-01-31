-- Create Instances of Classes
!create e1:Person
!create e2:Person
!create c1:Company

-- Set Variables for Objects
!set e1.salary := 10000
!set e2.salary := 20000
!set e1.name := 'Brady'
!set e2.name := 'Marcus'
!set e1.age := 22
!set e2.age := 22
!set c1.name := 'MSU'
!set c1.location := 'Bozeman'

-- Class operations
!c1.hire(e1)
!c1.hire(e2)
!c1.hire(e1) -- This one breaks because e1 is already hired
!c1.fire(e1)
!c1.fire(e1) -- This one breaks because e1 is already fired
!e2.raiseSalary(50000)
!e2.raiseSalary(40000) -- This breaks because the new salary will be lower than the old one
