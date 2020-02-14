-- creating characters
!create player:Player
!set player.name := 'Brady'
!set player.xPosition := 0
!set player.yPosition := 0
!set player.health := 20
!set player.level := Level::recruit

!create npc1:NonPlayableCharacter
!set npc1.name := 'Bone Crusher'
!set npc1.xPosition := 10
!set npc1.yPosition := 10
!set npc1.health := 30
!set npc1.level := Level::basic

!create npc2:NonPlayableCharacter
!set npc2.name := 'Assasin from the East'
!set npc2.xPosition := -10
!set npc2.yPosition := 15
!set npc2.health := 15
!set npc2.level := Level::master

!create npc3:NonPlayableCharacter
!set npc3.name := 'Common Criminal'
!set npc3.xPosition := 5
!set npc3.yPosition := 5
!set npc3.health := 8
!set npc3.level := Level::recruit

!create bow:Weapon
!set bow.name := 'Bow'
!set bow.damage := 3
!set bow.type := WeaponType::range
!insert (player, bow) into entityWeapon

!create sword:Weapon
!set sword.name := 'Sword'
!set sword.damage := 3
!set sword.type := WeaponType::melee
!insert (npc1, sword) into entityWeapon

!create fireball:Weapon
!set fireball.name := 'Fireball'
!set fireball.damage := 7
!set fireball.type := WeaponType::magic
!insert (npc2, fireball) into entityWeapon

!create dagger:Weapon
!set dagger.name := 'Dagger'
!set dagger.damage := 1
!set dagger.type := WeaponType::melee
!insert (npc3, dagger) into entityWeapon

-- end create characters

!player.seePlayer(npc3)
!player.attack(npc3)
!player.attack(npc3)
!player.attack(npc3)