Title: Quirk
Team Members: Andy Qin, Jessica He, Eric Liang
Demo Link: https://quirk-rails.herokuapp.com/  
Idea: A lightweight, anonymous question-and-answer application.
Models and Description:
User
•	Has name and email instances
•	Presence of name and email are validated and email must follow REGEX pattern

Room
•	Rooms contain unique sets of questions, which are sorted on their score
•	They can be created and deleted with ease

Question
•	Each question belongs to a room, so it only shows up there
•	Each question is associated with a score

Features:
•	Rooms can be created
•	Rooms can be shared by the URL
•	Questions can be asked
•	Each question can be upvoted
Division of Labor:
•	Andy: Made users, built Room-Question relationship
•	Eric: Built Room and Question models, created upvote feature
•	Jessica: Pair-programmed with Eric in styling the app and working on Questions
