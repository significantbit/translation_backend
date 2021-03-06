# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.first_or_create email: 'user@example.com', password: '12345678'

# Uncomment for test data
=begin
1000.times do
  Translation.create key: FFaker::Internet.slug(nil, '_'), value: FFaker::BaconIpsum.phrase()
end
=end

