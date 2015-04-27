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