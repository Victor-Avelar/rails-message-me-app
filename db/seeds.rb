# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "TestGuy", password: "pass")
User.create(username: "TestGuy2", password: "pass")
User.create(username: "TestGuy3", password: "pass")
User.create(username: "TestGuy4", password: "pass")
User.create(username: "TestGuy5", password: "pass")

Message.create(body: "Hi, I'm a message!", user: User.find(1))
Message.create(body: "Hi, I'm a message!", user: User.find(1))
Message.create(body: "Hi, I'm a message!", user: User.find(2))
Message.create(body: "Hi, I'm a message!", user: User.find(3))
Message.create(body: "Hi, I'm a message!", user: User.find(4))
Message.create(body: "Hi, I'm a message!", user: User.find(5))
Message.create(body: "Hi, I'm a message that is really long. How will I fit
  in this place I wonder? Ask me later because it will take a while
  for me to find out. but in the mean time, please
    have some coffee and sit by the fire. My uncle is coming and he loves
    to tell a good story. We will probably be here all night listening to
    his tales of 'back in the old days' and what not.", user: User.find(6))
