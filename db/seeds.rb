# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

powers = [
    {name:"speed",description:"access to the speed force"},
    {name:"strength",description:"access to the strength of superman"},
    {name:"flight",description:"access to the ability to fly"}
]

puts "creates powers"

powers.each{|power| Power.create(power)}

heroes = [
    {name:"dick gracyson", super_name:"knightwing"},
    {name:"clack kent", super_name:"superman"},
    {name:"princes diana", super_name:"wonderwoman"}
]

puts "creating heroes"

heroes.each{|hero| Hero.create(hero)}

HeroPower.create(strength: "Avarege", hero_id:1, power_id:1)