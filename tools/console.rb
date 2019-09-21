# new employee variables  :name, :restaurant, :rent, :address
require_relative '../config/environment.rb'

Pry.start

quick_chick = Restaurant.new("Quick Chick")
burger_palace = Restaurant.new("Burger Palace")
bring_me_wings = Restaurant.new("Bring Me Wings!")

quick_chick_vine = Location.new("103 & Vine Quick Chick", quick_chick, 2000, "57 Vine Street")
quick_chick_llano = Location.new("Llano Highway Quick Chick",  quick_chick, 1700, "800 Llano Highway")
burger_palace_melrose = Location.new("Melrose Burger Palace", burger_palace, 3200, "800 Melrose Place")
bring_me_wings_austin = Location.new("Austin Bring-Me-Wings", bring_me_wings, 1900, "57 Austin Avenue")


quick_chick_main = quick_chick.create_location("Main Street Quick Chick", 2300, "301 Main Street")
burger_palace_backwoods = burger_palace.create_location("Backwoods Burger Palace", 1400, "307 Backwoods Road")
bring_me_wings_greenbrier = bring_me_wings.create_location("Greenbrier Bring Me Wings", 2100, "73 Greenbrier Road")
bring_me_wings_schubert = bring_me_wings.create_location("Schubert Bring Me Wings", 1850, "73 Schubert Street")

frankie = Employee.new("Frankie O'Connor", burger_palace, burger_palace_melrose, 800)
phil = Employee.new("Phillip Mitchell", quick_chick, quick_chick_vine, 850)
gemma = burger_palace_backwoods.hire_employee("Gemma Evans", burger_palace, 950)
gerald = burger_palace_backwoods.hire_employee("Gerald Evans", burger_palace, 1050)
geoffrey = burger_palace_backwoods.hire_employee("Geoffrey Evans", burger_palace, 1050)
billy = quick_chick_llano.hire_employee("Billy Bob Roberts", quick_chick, 850)
angel = quick_chick_llano.hire_employee("Angel Olsen", quick_chick, 900)
jimmy = quick_chick_vine.hire_employee("Jimmy Jones", quick_chick, 1000)
clarice = quick_chick_main.hire_employee("Clarice Starling", quick_chick, 1200)
harold = quick_chick_main.hire_employee("Harold Furman", quick_chick, 850)
julien = bring_me_wings_austin.hire_employee("Julien Baker", bring_me_wings, 950)
phoebe = bring_me_wings_austin.hire_employee("Phoebe Bridges", bring_me_wings, 950)
fluffy = bring_me_wings_greenbrier.hire_employee("Fluffy the Dog", bring_me_wings, 50)
muffy = bring_me_wings_greenbrier.hire_employee("Muffy the Dog", bring_me_wings, 50)
buffy = bring_me_wings_greenbrier.hire_employee("Buffy the Vampire Slayer", bring_me_wings, 1050)
mulder = bring_me_wings_schubert.hire_employee("Fox Mulder", bring_me_wings, 850)
scully = bring_me_wings_schubert.hire_employee("Dana Scully", bring_me_wings, 1500)
smokey = bring_me_wings_schubert.hire_employee("The Smoking Man", bring_me_wings, 10)

Restaurant.all

Location.all
Location.all_addresses

Employee.all
Employee.average_pay

burger_palace.locations
quick_chick.locations
bring_me_wings.locations

burger_palace.total_rent
burger_palace.total_pay
burger_palace.total_expenses

quick_chick.total_rent
quick_chick.total_pay
quick_chick.total_expenses

bring_me_wings.total_rent
bring_me_wings.total_pay
bring_me_wings.total_expenses

burger_palace.employees
quick_chick.employees
bring_me_wings.employees

frankie.name
frankie.restaurant
frankie.location
frankie.pay
frankie.location.address

muffy.name
muffy.restaurant
muffy.location
muffy.pay
muffy.location.address
muffy.location.rent



binding.pry
0