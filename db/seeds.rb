# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Make Rooms
Room.create name: 'CS61A', description: 'Lecture 2 - Intro to Java'
Room.create name: 'WDD', description: 'CSS Box Model'
Room.create name: 'History 160', description: 'Civil War'
Room.create name: 'Physics 8A', description: 'Conservation of energy'

Question.create body: 'What is the definite integral of x?', room_id: 1
Question.create body: 'Why does professor hug have so many dogspotting links in his chrome?', room_id: 1
Question.create body: 'When professor hug says that nested for loops only sometimes runs in n^2 time, what does he mean? i thought this usually always happens?', room_id: 1
Question.create body: 'how do u java? halp plz :(', room_id: 1
