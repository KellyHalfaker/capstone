# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!({name: "Jake", age: 25, email: "jake@email.com", username: "userjake", password: "password"})
user2 = User.create!({name: "Jane", age: 19, email: "jane@email.com", username: "userjane", password: "password"})
user3 = User.create!({name: "Jim", age: 22, email: "jim@email.com", username: "userjim", password: "password"})

event1 = Event.create!({title: "An Event! With alcohol!", description: "It is an event!!! With alcohol!!!", address: "1234 Sesame Street or something", user_id: 3})
event2 = Event.create!({title: "An Alcohol Free Event!", description: "It is an event!!! Without alcohol!!!", address: "1432 Postico Ave", user_id: 2})
event3 = Event.create!({title: "All Ages Event!", description: "It is an event!!! For all ages!!!", address: "5555 N Lake Blvd", user_id: 3})

image1 = Image.create!({url: "image1.com", event_id: 1})
image2 = Image.create!({url: "image2.com", event_id: 2})
image3 = Image.create!({url: "image3.com", event_id: 2})

tag1 = Tag.create!({name: "21 and over"})
tag2 = Tag.create!({name: "No alcohol"})
tag3 = Tag.create!({name: "Nerdy stuff"})

user_event1 = UserEvent.create!(user_id: 3, event_id: 1)
user_event2 = UserEvent.create!(user_id: 1, event_id: 2)

event_tag1 = EventTag.create!(event_id: 1, tag_id: 1)
event_tag2 = EventTag.create!(event_id: 1, tag_id: 3)
event_tag3 = EventTag.create!(event_id: 2, tag_id: 2)
event_tag4 = EventTag.create!(event_id: 3, tag_id: 2)
event_tag5 = EventTag.create!(event_id: 3, tag_id: 3)


comment1 = Comment.create!({content: "I'll bring dice and shot glasses!", event_id: 1, user_id: 1})
comment2 = Comment.create!({content: "Is there parking nearby?", event_id: 2, user_id: 3})
comment3 = Comment.create!({content: "Should I bring food?", event_id: 3, user_id: 2})

