require "sinatra"
require "sinatra/cors"

set :allow_origin, "*"
set :allow_methods, "GET,HEAD,POST"
set :bind, "0.0.0.0"

POSTS = {
  1 => {
    title: "What was most significant about the lunar voyage was not that man set foot on the Moon but that they set eye on the earth.",
    body: "<p>To go places and do things that have never been done before – that’s what living is all about.</p><p>We choose to go to the moon in this decade and do the other things, not because they are easy, but because they are hard, because that goal will serve to organize and measure the best of our energies and skills, because that challenge is one that we are willing to accept, one we are unwilling to postpone, and one which we intend to win.</p><p>Where ignorance lurks, so too do the frontiers of discovery and imagination.</p><p>Never in all their history have men been able truly to conceive of the world as one: a single sphere, a globe, having the qualities of a globe, a round earth in which all the directions eventually meet, in which there is no center because every point, or none, is center — an equal earth which all men occupy as equals. The airman's earth, if free men make it, will be truly round: a globe in practice, not in theory.</p><p>Problems look mighty small from 150 miles up.</p><p>We want to explore. We’re curious people. Look back over history, people have put their lives at stake to go out and explore … We believe in what we’re doing. Now it’s time to go.</p><p>If you could see the earth illuminated when you were in a place as dark as night, it would look to you more splendid than the moon.</p><p>Across the sea of space, the stars are other suns.</p>",
    image: "https://spaceholder.cc/1900x600",
    description: "the first post",
    author: "Jabawack81",
    date: "23 April 2018"
  },
  2 => {
    title: "The dreams of yesterday are the hopes of today and the reality of tomorrow.",
    body: "<p>Failure is not an option.</p><p>You know, being a test pilot isn't always the healthiest business in the world.</p><p>Never in all their history have men been able truly to conceive of the world as one: a single sphere, a globe, having the qualities of a globe, a round earth in which all the directions eventually meet, in which there is no center because every point, or none, is center — an equal earth which all men occupy as equals. The airman's earth, if free men make it, will be truly round: a globe in practice, not in theory.</p><p>Here men from the planet Earth first set foot upon the Moon. July 1969 AD. We came in peace for all mankind.</p><p>We are all connected; To each other, biologically. To the earth, chemically. To the rest of the universe atomically.</p><p>Failure is not an option.</p><p>I don't know what you could say about a day in which you have seen four beautiful sunsets.</p><p>For those who have seen the Earth from space, and for the hundreds and perhaps thousands more who will, the experience most certainly changes your perspective. The things that we share in our world are far more valuable than those which divide us.</p>",
    image: "https://spaceholder.cc/1900x600",
    description: "the first post",
    author: "Jabawack81",
    date: "23 April 2018"
  },
  3 => {
    title: "I believe every human has a finite number of heartbeats. I don't intend to waste any of mine",
    body: "<p>The path of a cosmonaut is not an easy, triumphant march to glory. You have to get to know the meaning not just of joy but also of grief, before being allowed in the spacecraft cabin.</p><p>Dinosaurs are extinct today because they lacked opposable thumbs and the brainpower to build a space program.</p><p>The sky is the limit only for those who aren't afraid to fly!</p><p>The regret on our side is, they used to say years ago, we are reading about you in science class. Now they say, we are reading about you in history class.</p><p>When I orbited the Earth in a spaceship, I saw for the first time how beautiful our planet is. Mankind, let us preserve and increase this beauty, and not destroy it!</p><p>Astronomy compels the soul to look upward, and leads us from this world to another.</p><p>As I stand out here in the wonders of the unknown at Hadley, I sort of realize there’s a fundamental truth to our nature, Man must explore . . . and this is exploration at its greatest.</p><p>When I orbited the Earth in a spaceship, I saw for the first time how beautiful our planet is. Mankind, let us preserve and increase this beauty, and not destroy it!</p><p>Dinosaurs are extinct today because they lacked opposable thumbs and the brainpower to build a space program.</p><p>To be the first to enter the cosmos, to engage, single-handed, in an unprecedented duel with nature—could one dream of anything more?</p>",
    image: "https://spaceholder.cc/1900x600",
    description: "the first post",
    author: "Jabawack81",
    date: "23 April 2018"
  },
  4 => {
    title: "The regret on our side is, they used to say years ago, we are reading about you in science class. Now they say, we are reading about you in history class.",
    body: "<p>Science cuts two ways, of course; its products can be used for both good and evil. But there's no turning back from science. The early warnings about technological dangers also come from science.</p><p>Houston, Tranquillity Base here. The Eagle has landed.</p><p>The Earth was small, light blue, and so touchingly alone, our home that must be defended like a holy relic. The Earth was absolutely round. I believe I never knew what the word round meant until I saw Earth from space.</p><p>Here men from the planet Earth first set foot upon the Moon. July 1969 AD. We came in peace for all mankind.</p><p>Many say exploration is part of our destiny, but it’s actually our duty to future generations and their quest to ensure the survival of the human species.</p><p>To go places and do things that have never been done before – that’s what living is all about.</p><p>I don't know what you could say about a day in which you have seen four beautiful sunsets.</p><p>I don't know what you could say about a day in which you have seen four beautiful sunsets.</p><p>What was most significant about the lunar voyage was not that man set foot on the Moon but that they set eye on the earth.</p>",
    image: "https://spaceholder.cc/1900x600",
    description: "the first post",
    author: "Jabawack81",
    date: "23 April 2018"
  },
  5 => {
    title: "Buy why, some say, the moon? Why choose this as our goal? And they may as well ask why climb the highest mountain?",
    body: "<p>Here men from the planet Earth first set foot upon the Moon. July 1969 AD. We came in peace for all mankind.</p><p>There can be no thought of finishing for ‘aiming for the stars.’ Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p><p>I don't know what you could say about a day in which you have seen four beautiful sunsets.</p><p>Science cuts two ways, of course; its products can be used for both good and evil. But there's no turning back from science. The early warnings about technological dangers also come from science.</p><p>To be the first to enter the cosmos, to engage, single-handed, in an unprecedented duel with nature—could one dream of anything more?</p>",
    image: "https://spaceholder.cc/1900x600",
    description: "the first post",
    author: "Jabawack81",
    date: "23 April 2018"
  },
  6 => {
    title: "Problems look mighty small from 150 miles up.",
    body: "<p>A Chinese tale tells of some men sent to harm a young girl who, upon seeing her beauty, become her protectors rather than her violators. That's how I felt seeing the Earth for the first time. I could not help but love and cherish her.</p><p>We choose to go to the moon in this decade and do the other things, not because they are easy, but because they are hard, because that goal will serve to organize and measure the best of our energies and skills, because that challenge is one that we are willing to accept, one we are unwilling to postpone, and one which we intend to win.</p><p>That's one small step for [a] man, one giant leap for mankind.</p><p>Failure is not an option.</p><p>Problems look mighty small from 150 miles up.</p><p>I believe every human has a finite number of heartbeats. I don't intend to waste any of mine</p><p>Houston, Tranquillity Base here. The Eagle has landed.</p><p>The regret on our side is, they used to say years ago, we are reading about you in science class. Now they say, we are reading about you in history class.</p><p>Buy why, some say, the moon? Why choose this as our goal? And they may as well ask why climb the highest mountain?</p><p>There can be no thought of finishing for ‘aiming for the stars.’ Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>",
    image: "https://spaceholder.cc/1900x600",
    description: "the first post",
    author: "Jabawack81",
    date: "23 April 2018"
  },
  7 => {
    title: "Failure is not an option.",
    body: "<p>Houston, Tranquillity Base here. The Eagle has landed.</p><p>I don't know what you could say about a day in which you have seen four beautiful sunsets.</p><p>We choose to go to the moon in this decade and do the other things, not because they are easy, but because they are hard, because that goal will serve to organize and measure the best of our energies and skills, because that challenge is one that we are willing to accept, one we are unwilling to postpone, and one which we intend to win.</p><p>Buy why, some say, the moon? Why choose this as our goal? And they may as well ask why climb the highest mountain?</p><p>For those who have seen the Earth from space, and for the hundreds and perhaps thousands more who will, the experience most certainly changes your perspective. The things that we share in our world are far more valuable than those which divide us.</p>",
    image: "https://spaceholder.cc/1900x600",
    description: "the first post",
    author: "Jabawack81",
    date: "23 April 2018"
  }
  }.freeze

get "/posts/" do
  content_type :json
  POSTS.to_json
end

get "/posts/:id" do
  content_type :json
  p params[:id]
  POSTS[params[:id].to_i].to_json
end
