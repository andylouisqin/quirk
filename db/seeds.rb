# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Make Rooms
Room.create name: 'CS61B', description: 'Lecture 2 - Intro to Java'
Room.create name: 'WDD', description: 'CSS Box Model'
Room.create name: 'History 160', description: 'Civil War'
Room.create name: 'Physics 8A', description: 'Conservation of energy'

Question.create body: 'What is the definite integral of x?', room_id: 1
Question.create body: 'Why does professor hug have so many dogspotting links in his chrome?', room_id: 1
Question.create body: 'When professor hug says that nested for loops only sometimes runs in n^2 time, what does he mean? i thought this usually always happens?', room_id: 1
Question.create body: 'how do u java? halp plz :(', room_id: 1

Question.create body: "how do you submit via github?", room_id: 2
Question.create body: "what's the difference between position and display?", room_id: 2
Question.create body: "Why is shawn's hair gold?", room_id: 2
Question.create body: "How come when I type transition: 0.2; it doesn't work?", room_id: 2