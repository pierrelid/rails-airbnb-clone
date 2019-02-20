# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


User.destroy_all
Categorie.destroy_all
Experience.destroy_all
Reservation.destroy_all

Categorie.create!(name: "SKI")
Categorie.create!(name: "PONEY")
Categorie.create!(name: "NATATION")

user = User.create!(
  first_name: 'julien',
  last_name: 'lu',
  email: 'julien@gmail.com',
  password: 'topsecret',
)

User.create(
  first_name: 'jean marc',
  last_name: 'lu',
  email: 'jeanmarc@gmail.com',
  password: 'topsecret',
  password_confirmation: 'topsecret'
  )

User.create(
  first_name: 'fanny',
  last_name: 'lu',
  email: 'fanny@gmail.com',
  password: 'topsecret',
  password_confirmation: 'topsecret'
  )

User.create(
  first_name: 'pierre',
  last_name: 'lu',
  email: 'pierre@gmail.com',
  password: 'topsecret',
  password_confirmation: 'topsecret'
  )

@users = User.all
user_ids =[]
@users.each do |user|
  user_ids << user.id
end


10.times{
  experience = Experience.create(
    name: ["Sport", "OutDoor", "Activité"].sample,
    price: [10,25,30,5,3,60].sample,
    participants_number_max: [1,2,3,4,5,6,7,8,9,10].sample,
    photo: ["experience1.jpg", "experience2.jpg", "experience3.jpg", "experience4.jpg", "experience5.jpg", "experience7.jpg", "experience8.jpg", "experience9.jpg", "experience10.jpg"].sample,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur nesciunt tempore ex esse harum. Numquam ipsum alias, reiciendis hic, culpa sit, assumenda provident optio labore quia fugiat vitae dicta nostrum?",
    user_id: user_ids.sample,
    address: [" 107 Cours Balguerie Stuttenberg, 33300 Bordeaux", "Place Pey Berland, 33000 Bordeaux", "Esplanade de Pontac, 134 Quai de Bacalan, 33300 Bordeaux", "9 Quai de la Douane, 33000 Bordeaux"].sample )
  p "------------------------"
  p ""
  p "name : #{experience.name}"
  p "price : #{experience.price}"
  p "participants_number_max : #{experience.participants_number_max}"
  p "photo : #{experience.photo}"
  p "address : #{experience.address}"
  p "description : #{experience.description}"
  p "user_id : #{experience.user_id}"
  p ""
  p "------------------------"
  p ""
  p ""
}



