# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
      :email                 => "tue41681@temple.edu",
      :password              => "123456",
      :password_confirmation => "123456"
  )
  user.save!
Equipment.create(name: 'mac1', dop: '03/12/1987')
Transaction.create( user_id: User.first.id , equipment_id: Equipment.first.id, rented_datetime: Time.now)
