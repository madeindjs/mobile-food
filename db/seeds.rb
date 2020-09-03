# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Destroy all"
Partner.destroy_all
Client.destroy_all
Booking.destroy_all

puts 'Creating 50 fake partners...'
50.times do
  partner = Partner.create!(
    food_type: Faker::Restaurant.type,
    company_name: Faker::Restaurant.name,
    first_name: Faker::Name.first_name,
    last_name:Faker::Name.last_name,
    address:Faker::Address.city,
    phone_number:Faker::PhoneNumber.cell_phone_with_country_code,
    email:Faker::Internet.email,
    picture_url:"https://images.unsplash.com/photo-1467278941343-c6d371b23a90?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80",
    description: Faker::Restaurant.description,
    min_guest:rand(10..100),
    comment:Faker::Restaurant.review,
    review:rand(0..5)
  )
  partner.save!
end
puts 'Finished!'

puts 'Creating 50 fake clients...'
50.times do
  client = Client.create!(
  first_name: Faker::Name.first_name,
  last_name:Faker::Name.last_name,
  company: Faker::Restaurant.name,
  email:Faker::Internet.email,
  phone_number:Faker::PhoneNumber.cell_phone_with_country_code,
  comment:Faker::Quote.famous_last_words,
  status: "new"
  )
  client.save!
end

puts 'Finished!'

puts 'Creating 50 fake bookings...'
  50.times do
    booking = Booking.create!(
      date: Faker::Time.forward(days: 23, period: :morning),
      city:Faker::Address.city,
      guest_quantity:rand(10..250),
      budget_per_guest:rand(10..50),
      food_type: [Faker::Restaurant.type,Faker::Restaurant.type],
      has_electricity: Faker::Boolean.boolean,
      chosen_partner_id: Partner.all.sample.id,
      client_id: Client.all.sample.id
    )
    booking.save!
  end

puts 'Finished!'
