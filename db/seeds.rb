# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'

puts 'Creating pharmacies...'


d1 = DateTime.new(2019, 6, 4)
d2 = DateTime.new(2019, 9, 4)
d3 = DateTime.new(2019, 6, 5)

puts 'Creating orders...'
Pharmacie.create!(
  name: 'Grande Pharmacie Castellane',
  address: '11 Place Castellane, 13006 Marseille',
  phone_number: '0899273505',
  )

Pharmacie.create!(
  name: 'Pharmacie de la Tour',
  address: '65 Avenue du Prado, 13006 Marseille',
  phone_number: '0491372023',
  )

Pharmacie.create!(
  name: 'Pharmacie Lafayette du Grand Prado',
  address: '100 Rue du Rouet, 13006 Marseille',
  phone_number: '0491375789',
  )
Pharmacie.create!(
  name: 'Pharmacie Du Corner',
  address: '85 rue Paradis, 13006 Marseille',
  phone_number: '0491331646',
  )
Pharmacie.create!(
  name: 'Pharmacie Albrand',
  address: '24 bd Baille, 13006 Marseille',
  phone_number: '0491780467',
  )
Pharmacie.create!(
  name: 'Pharmacie de la Préfecture',
  address: '105 A r Rome, 13006 Marseille',
  phone_number: '0491543265',
  )
Pharmacie.create!(
  name: 'Pharmacie de Lodi',
  address: '99 r Tilsit, 13006 Marseille',
  phone_number: '0491485732',
  )
puts 'Finished'
