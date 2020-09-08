# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Node.destroy_all
Creatrix.destroy_all

10.times do
    creatrix = Creatrix.create(email: Faker::Name.first_name + "@yopmail.com", password: "123123")
end

25.times do 
    node = Node.create(title: Faker::Books::Lovecraft.tome, content: Faker::Books::Lovecraft.paragraphs(number: rand(1..3))[0], creatrix: Creatrix.all.sample ) 
end