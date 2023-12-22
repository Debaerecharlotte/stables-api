# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Stable.destroy_all

puts 'Adding some stables...'
sleep 1
puts '...'
sleep 1
puts '...'
sleep 1

Stable.create(
  name: 'Crossoaks Equestrian',
  address_first: 'Crossoaks Lane',
  address_second: '',
  city: 'Borehamwood',
  postcode: 'WD6 5PH',
  phone: '+44 7718 779715',
  email: 'info@crossoaksequestrian.com',
  specialty: 'jumping',
  category: 'private'
)

Stable.create(
  name: 'Lee Valley Riding Centre',
  address_first: '71 Lea Bridge Road',
  address_second: '',
  city: 'London',
  postcode: 'E10 7QL',
  phone: '+44 300 003 0629',
  email: 'LVriding@gll.org',
  specialty: '',
  category: 'club'
)

puts 'All done here!'
