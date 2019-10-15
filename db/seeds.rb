# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.destroy_all
Complaint.destroy_all
User.destroy_all


20.times do |x|
    Company.create(
        name: Faker::Company.name
    )
end

30.times do |y|
    User.create(
    email: Faker::Internet.email,
    password: '123123'
    )
end

250.times do |z|
    Complaint.create(
    detail: Faker::TvShows::RickAndMorty.quote,
    company: Company.order("RANDOM()").first,
    user: User.order("RANDOM()").first
    )
end

AdminUser.create!(email: 'admin@admin.com', password: '123123', password_confirmation: '123123')