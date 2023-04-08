# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
    title: "My blog post #{blog}",
    body: 'test'
  )
end

5.times do |skill|
  Skill.create!(title: "Rails #{skill}", percent_utilized: 10)
end

9.times do |portfolio_item|
  Portfolio.create!(title: "Portfolio title #{portfolio_item}", subtitle: "My great Service", body: 'test', image: 'https://placehold.co/600x400', thumb_image: 'https://placehold.co/300x200' )
end