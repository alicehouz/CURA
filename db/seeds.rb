# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'

Order.destroy_all
puts 'Creating orders...'
Order.create!(
  order_number: '#12345',
  order_date: '04/06/2019',
  street_name: '167 rue paradis',
  zip_code: '13000',
  city: 'Marseille',
  prescription_price: '45€',
  amount_refunded: '40€',
  delivery_price: '10€',
  total_price:'15€',
  )
Order.create!(
  order_number: '#13578',
  order_date: '04/06/2019',
  street_name: '168 rue paradis',
  zip_code: '13000',
  city: 'Marseille',
  prescription_price: '51€',
  amount_refunded: '30€',
  delivery_price: '10€',
  total_price:'31€',
  )
Order.create!(
  order_number: '#987654',
  order_date: '04/06/2019',
  street_name: '15 rue paradis',
  zip_code: '13000',
  city: 'Marseille',
  prescription_price: '29€',
  amount_refunded: '18€',
  delivery_price: '9€',
  total_price:'20€',
  )
puts 'Finished'
