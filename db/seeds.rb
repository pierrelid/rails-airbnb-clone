# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#require 'faker'


User.destroy_all
Categorie.destroy_all
Experience.destroy_all
Reservation.destroy_all

Categorie.create(name: "SKI")
Categorie.create(name: "PONEY")
Categorie.create(name: "NATATION")

@user = User.create(
  first_name: 'julien',
  last_name: 'lu',
  email: 'julien@gmail.com',
  password: 'topsecret',
  password_confirmation: 'topsecret'
  )

10.times {
  Experience.create(
    name: "",
    user_id: 1,
    price: 10,
    participants_number_max: 10,
    photo: "https://picsum.photos/200/300",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur nesciunt tempore ex esse harum. Numquam ipsum alias, reiciendis hic, culpa sit, assumenda provident optio labore quia fugiat vitae dicta nostrum?"
    )
}
