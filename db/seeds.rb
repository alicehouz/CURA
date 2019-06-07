# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'

# Order.destroy_all
# Prescription.destroy_all
# User.destroy_all

# puts 'Creating user...'
# User.create!(
#   email: 'toto@gmail.com',
#   password: '123456',
#   first_name: 'Jean',
#   last_name: 'Dupont',
#   street_name: '2 rue paradis',
#   zip_code: '13000',
#   city: 'Marseille',
#   phone_number: '0707070707',
#   social_security: '123456789',
#   id_card: '122BNJG567K',
#   )

# d1 = DateTime.new(2019, 6, 4)
# d2 = DateTime.new(2019, 9, 4)
# d3 = DateTime.new(2019, 6, 5)

puts 'Creating orders...'
# Order.create!(
#   user: User.last,
#   order_number: '#12345',
#   order_date: d1,
#   street_name: '167 rue paradis',
#   zip_code: '13000',
#   city: 'Marseille',
#   prescription_price: 45,
#   amount_refunded: 40,
#   delivery_price: 10,
#   total_price: 15,
#   )
# Order.create!(
#   user: User.last,
#   order_number: '#13578',
#   order_date: d1,
#   street_name: '168 rue paradis',
#   zip_code: '13000',
#   city: 'Marseille',
#   prescription_price: 51,
#   amount_refunded: 30,
#   delivery_price: 10,
#   total_price: 31,
#   )
# Order.create!(
#   user: User.last,
#   order_number: '#987654',
#   order_date: d1,
#   street_name: '15 rue paradis',
#   zip_code: '13000',
#   city: 'Marseille',
#   prescription_price: 29,
#   amount_refunded: 18,
#   delivery_price: 9,
#   total_price: 20,
#   )

puts 'Creating prescription'
# Prescription.create!(
#   user: User.last,
#   image: 'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjg1oLPxs_iAhVJ8uAKHU0aCA4QjRx6BAgBEAU&url=http%3A%2F%2Finfos-sociales.over-blog.com%2F2017%2F11%2Fl-ecriture-indechiffrable-sur-les-ordonnances-medicales.html&psig=AOvVaw3s5NI9MNceKV_ov1HwTQN5&ust=1559728236712141',
#   scan_date: d1,
#   prescription_name: 'Foulure',
#   prescription_start_date: d1,
#   prescription_expiry_date: d2,
#   delivery_date: d3,
#   reccurrency: true,
#   )
# Prescription.create!(
#   user: User.last,
#   image: 'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjHhtyfys_iAhXv1uAKHfbkCyEQjRx6BAgBEAU&url=http%3A%2F%2Fwww.santenews-dz.com%2Fordonnance-intelligente-projet-revolutionnaire%2F&psig=AOvVaw2LTsw6I2nBcbZ4GsAvSd-U&ust=1559729206007257',
#   scan_date: d1,
#   prescription_name: 'Diabete',
#   prescription_start_date: d1,
#   prescription_expiry_date: d2,
#   delivery_date: d3,
#   reccurrency: true,
#   )
# Prescription.create!(
#   user: User.last,
#   image: 'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjJtoazys_iAhWIGBQKHaOHC0oQjRx6BAgBEAU&url=https%3A%2F%2Fwww.atoute.org%2Fn%2Fbreve90.html&psig=AOvVaw2LTsw6I2nBcbZ4GsAvSd-U&ust=1559729206007257',
#   scan_date: d1,
#   prescription_name: 'Rhume',
#   prescription_start_date: d1,
#   prescription_expiry_date: d2,
#   delivery_date: d3,
#   reccurrency: false,
#   )
puts 'Finished'
