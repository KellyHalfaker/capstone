# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!({name: "Jake Smith", age: 25, email: "jake@email.com", username: "userjake", password: "password"})
user2 = User.create!({name: "Jane Doe", age: 19, email: "jane@email.com", username: "userjane", password: "password"})
user3 = User.create!({name: "Jim Bowers", age: 22, email: "jim@email.com", username: "userjim", password: "password"})

event1 = Event.create!({title: "DnD at Millenium Park!", description: "I am planning a get-together at Millenium Park for fellow Chicogoan lovers of Dungeons and Dragons to come together, make friends, and play DnD together. Those who are new to the game are welcome, and materials to get started with a campaign will be provided! Please meet at The Bean at 12:00pm. From there, we can find an open area to hang out and play.", address: "201 E Randolph St, Chicago, IL 60602", date: "10 October 2018", user_id: 3})
event2 = Event.create!({title: "Coffee and DnD in the Gaslamp", description: "Come join us at the Chocolat Cremerie cafe at 10:30am to enjoy pastries, coffee, and Dungeons and Dragons! This event will be very casual, so please bring your own equipment. Some experience playing the game is highly recommended, as we will be jumping straight into it.", address: "509 Fifth Ave, San Diego, CA 92101", date: "23 October 2018", user_id: 2})
event3 = Event.create!({title: "Pokemon Hunting in Lincoln Park", description: "Stock up on pokeballs and bring your phone, this event is for anyone who would like to enjoy friendly company while trekking around Lincoln Park and playing Pokemon Go! Let's work together to take on the raids in the area and drop an insane amount of lures. A few friends and I will be starting around 3:00pm at the Lincoln Conservatory, but please feel free to join us at any time between then and 7:00pm. If you arrive after 3 and we are not at the conservatory, please leave a comment here and I will respond with where we are in the park.", address: "2391 N Stockton Dr, Chicago, IL 60614", date: "10 November 2018", user_id: 3})
event4 = Event.create!({title: "Yu-Gi-Oh and Cocktails", description: "Hey, everyone! Please join myself and other local Yu-Gi-Oh players for drinks and duels at The Redroom in Santa Cruz. Bring any cards you would like to trade and any decks you've been hoping to try out! We are meeting for a couple hours starting at 9:00pm.", address: "1003 Cedar St, Santa Cruz, CA 95060", date: "19 November 2018", user_id: 1})
event5 = Event.create!({title: "Magic the Gathering Gathering", description: "Hey, fellow Magic the Gathering players! I'm interested in meeting more Magic players in the are and thought it would be cool to try to get the community around here together. Whether a new or veteran player, all are welcome!", address: "1788 El Prado, San Diego, CA 92101", date: "27 November 2018", user_id: 2})

image1 = Image.create!({url: "https://i.imgur.com/J080qHu.jpg", event_id: 1})
image2 = Image.create!({url: "https://media-cdn.tripadvisor.com/media/photo-s/0e/a8/11/38/the-bean-chicago.jpg", event_id: 1})
image3 = Image.create!({url: "https://images-na.ssl-images-amazon.com/images/I/81D%2BiPGF%2B1L._SX569_.jpg", event_id: 2})
image4 = Image.create!({url: "https://vignette.wikia.nocookie.net/pokemon/images/1/14/IL082.jpg/revision/latest?cb=20140104230756", event_id: 3})
image5 = Image.create!({url: "https://nthp-savingplaces.s3.amazonaws.com/2015/12/24/11/07/56/722/Historic%20Bars_Red%20Restaurant%20Interior_Blaise%20Nutter_edit.jpg", event_id: 4})
image5 = Image.create!({url: "https://orig00.deviantart.net/f843/f/2016/177/e/4/maximillion_pegasus__deck__4kids_anime_style__by_dzemil5-da7p92q.png", event_id: 4})
image5 = Image.create!({url: "https://i.ytimg.com/vi/yoqsLUAprpk/hqdefault.jpg", event_id: 5})



tag1 = Tag.create!({name: "21 and over"})
tag2 = Tag.create!({name: "TCG"})
tag3 = Tag.create!({name: "Dungeons and Dragons"})
tag4 = Tag.create!({name: "beginners welcome"})
tag5 = Tag.create!({name: "Yu-Gi-Oh"})
tag6 = Tag.create!({name: "Pokemon"})
tag7 = Tag.create!({name: "Magic the Gathering"})

user_event1 = UserEvent.create!(user_id: 1, event_id: 1)
user_event2 = UserEvent.create!(user_id: 1, event_id: 3)
user_event3 = UserEvent.create!(user_id: 1, event_id: 5)
user_event4 = UserEvent.create!(user_id: 2, event_id: 3)
user_event5 = UserEvent.create!(user_id: 2, event_id: 2)
user_event4 = UserEvent.create!(user_id: 3, event_id: 4)
user_event5 = UserEvent.create!(user_id: 3, event_id: 5)


event_tag1 = EventTag.create!(event_id: 1, tag_id: 3)
event_tag2 = EventTag.create!(event_id: 1, tag_id: 4)
event_tag3 = EventTag.create!(event_id: 2, tag_id: 3)
event_tag4 = EventTag.create!(event_id: 3, tag_id: 6)
event_tag5 = EventTag.create!(event_id: 4, tag_id: 1)
event_tag6 = EventTag.create!(event_id: 4, tag_id: 2)
event_tag7 = EventTag.create!(event_id: 4, tag_id: 5)
event_tag8 = EventTag.create!(event_id: 5, tag_id: 2)
event_tag9 = EventTag.create!(event_id: 4, tag_id: 4)
event_tag10 = EventTag.create!(event_id: 5, tag_id: 7)

comment1 = Comment.create(event_id: 1, user_id: 1, content: "I'll bring my guide books and some extra dice.")


# comment1 = Comment.create!({content: "I'll bring dice and shot glasses!", event_id: 1, user_id: 1})
# comment2 = Comment.create!({content: "Is there parking nearby?", event_id: 2, user_id: 3})
# comment3 = Comment.create!({content: "Should I bring food?", event_id: 3, user_id: 2})

