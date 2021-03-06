# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
  user = User.create(email: "user#{i+1}@dudes.com", password: 'password')
  5.times do |j|
    user.notes.create(title: "Note title #{j+1} by user#{i+1}", body: "Note body #{j+1} by user#{i+1}")
  end
end
