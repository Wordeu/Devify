# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'open-uri '

puts "Destorying all users"
puts "Destroying all profiles"
Profile.destroy_all
User.destroy_all

puts "creating seeds"
category = %w[frontend backend fullstack]
#template = User.create(email: "template @lewagon.com", password: "123456")

hasna = User.create(email: "hasna@lewagon.com", password: "123456")
puts "Hasna seeded!"
file = URI.open("./db/images/Hasna.png")
hasna_profile = Profile.create!(
  name: "Hasna Begum",
  bio: "I've worked in a start up company for over 6 years. As a member of the operations team, we've grown the business from a small to mid level company. Throughout this experience, I've grown to understand and appreciate the value of tech team. I'm eager to embark on a new journey to become a skilled web developer and use my prior experience to help another start up business.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: hasna.id
  )
hasna_profile.photo.attach(io: file, filename: "Hasna.png", content_type: "images/png")
hasna_profile.save!

file1 = File.open("./db/images/Phoebe.png")
phoebe = User.create(email: "phoebe@lewagon.com", password: "123456")
puts "Phoebe seeded!"
phoebe_profile = Profile.create!(
  name: "Phoebe Benbow",
  bio: "Hi, I'm Phoebe, 24 :) Before joining Le Wagon, I studied Philosophy at KCL before pursuing various career paths (e.g. Education), hoping to find my passion. I've really enjoyed the start of my journey of learning to code through trying to teach myself, but am ready to give it 100%. I hope to switch careers through this course, and find a job as a Junior Developer.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: phoebe.id
  )
phoebe_profile.photo.attach(io: file1, filename: "Phoebe.png", content_type: "images/png")
phoebe_profile.save!

file2 = File.open("./db/images/Rory.png")
rory = User.create(email: "rory@lewagon.com", password: "123456")
puts "Rory seeded!"
rory_profile = Profile.create!(
  name: "Rory Boyle",
  bio: "Ex ESL teacher from Scotland, moved down to London in the last year. Learning to code with Le Wagon. I put of learning to code for a while but finally getting round to it.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: rory.id
)
rory_profile.photo.attach(io: file2, filename: "Rory.png", content_type: "images/png")
rory_profile.save!

file3 = File.open("./db/images/Dorian.png")
dorian = User.create(email: "dorian@lewagon.com", password: "123456")
puts "Dorian seeded!"
dorian_profile = Profile.create!(
  name: "Dorian Calin",
  bio: "Background: Concierge. Goal: Web Developer. Future prospects: Exciting opportunities in the tech landscape. xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: dorian.id
)
dorian_profile.photo.attach(io: file3, filename: "Dorian.png", content_type: "images/png")
dorian_profile.save!

file4 = File.open("./db/images/Gorka.png")
gorka = User.create(email: "gorka@lewagon.com", password: "123456")
puts "Gorka seeded!"
gorka_profile = Profile.create!(
  name: "Gorka Echavarri",
  bio: "Born in the north of Spain, I have been living in London already 4 years. Excited for new challenges and eager to learn new things. I studied Business Administration and worked in the Financial Technology Business. I was looking for a big change and wanted to learn more about coding. As hobbies I like rock climbing, movies and video games. Not a morning person but come say hi :)",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: gorka.id
)
gorka_profile.photo.attach(io: file4, filename: "Gorka.png", content_type: "images/png")
gorka_profile.save!

file5 = File.open("./db/images/Camillo.png")
camillo = User.create(email: "camillo@lewagon.com", password: "123456")
puts "Camillo seeded!"
camillo_profile = Profile.create!(
  name: "Camillo Paolo Giugliano",
  bio: "Prior to Lewagon, I was a student at Coventry university London in Global business management. I have always been interested in programming and I believe that this bootcamp is the best opportunity to upskill myself in the programming world.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: camillo.id
)
camillo_profile.photo.attach(io: file5, filename: "Camillo.png", content_type: "images/png")
camillo_profile.save!

file6 = File.open("./db/images/Jamie.png")
jamie = User.create(email: "jamie@lewagon.com", password: "123456")
puts "Jamie seeded!"
jamie_profile = Profile.create!(
  name: "Jamie Graham",
  bio: "After finishing an Ancient History degree at the University of Nottingham in 2019, I bounced around a bit before ending up in tech. After working with engineers for a couple of years, I'm excited to finally write some code of my own and meet likeminded people doing the same!",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: jamie.id
)
jamie_profile.photo.attach(io: file6, filename: "Jamie.png", content_type: "images/png")
jamie_profile.save!

file7 = File.open("./db/images/Eduardo.png")
eduardo = User.create(email: "eduardo@lewagon.com", password: "123456")
puts "Eduardo seeded!"
eduardo_profile = Profile.create!(
  name: "Eduardo Guerrero",
  bio: "I'm a 39 years old, born and bred in Barcelona Spain, who has dedicated the last 19 years to aircraft maintenance engineering. Since I was a kid, I've been around computers as we had a PC at home all the time to play around with. From MsDos, to all windows and now getting into Mac environment. Web development, and coding in general is being in the back of my mind for far too log. Till now! After this course, life will tell us, as they say. I'd like to get job to consolidate my new knowledge and learn event more! Looking forward too meet you all!",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: eduardo.id
)
eduardo_profile.photo.attach(io: file7, filename: "Eduardo.png", content_type: "images/png")
eduardo_profile.save!

file8 = File.open("./db/images/Ismaeel.png")
ismaeel = User.create(email: "ismaeel@lewagon.com", password: "123456")
puts "Ismaeel seeded!"
ismaeel_profile = Profile.create!(
  name: "Ismaeel Haque",
  bio: "Very cool guy",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: ismaeel.id
)
ismaeel_profile.photo.attach(io: file8, filename: "Ismaeel.png", content_type: "images/png")
ismaeel_profile.save!

file9 = File.open("./db/images/Ken.png")
ken = User.create(email: "ken@lewagon.com", password: "123456")
puts "Ken seeded!"
ken_profile = Profile.create!(
  name: "Ken Ikegami",
  bio: "I have worked at Japanese food supplier in london as sales and Logistics company. I always had many ideas to improve procedure to change my systems But I don't know how. And also I was curious about making app or website. I would like to change my career or enhance it with IT skills.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: ken.id
)
ken_profile.photo.attach(io: file9, filename: "Ken.png", content_type: "images/png")
ken_profile.save!

file10 = File.open("./db/images/Alice.png")
alice = User.create(email: "alice@lewagon.com", password: "123456")
puts "Alice seeded!"
alice_profile = Profile.create!(
  name: "Alice Jackson",
  bio: "I have spent the most of the last 8 years working in hospitality and event based jobs but after turning 30, I went through the typical existential crisis and decided I wanted a new challenge. I've been living in France for the last 5 years and after the course I hope to secure a job as a Junior Full Stack Developer and eventually return to the Alps to work remotely. I am excited at the prospect of a new career and of delving into a new world as well as meeting new people and sharing this journey with like minded people on the course.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: alice.id
)
alice_profile.photo.attach(io: file10, filename: "Alice.png", content_type: "images/png")
alice_profile.save!

file11 = File.open("./db/images/Warsame.png")
warsame = User.create(email: "warsame@lewagon.com", password: "123456")
puts "Warsame seeded!"
warsame_profile = Profile.create!(
  name: "Warsame Jama",
  bio: "I want to learn to code when I watched software developers work in my previous role. I want to become a software engineer after Le Wagon working in a junior/entry level role. I hope to use the skills learnt in Le Wagon to embark on a new career that I am extremely interested in.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: warsame.id
)
warsame_profile.photo.attach(io: file11, filename: "Warsame.png", content_type: "images/png")
warsame_profile.save!

file12 = File.open("./db/images/Max.png")
max = User.create(email: "max@lewagon.com", password: "123456")
puts "Max seeded!"
max_profile = Profile.create!(
  name: "Max Martinez",
  bio: "I've spent the last six years working in operations management at major tech companies and from day one, I've been fascinated by coding and software development. I think it's higher time I started learning how to code.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: max.id
)
max_profile.photo.attach(io: file12, filename: "Max.png", content_type: "images/png")
max_profile.save!

file13 = File.open("./db/images/Rachael.png")
rachael = User.create(email: "rachael@lewagon.com", password: "123456")
puts "Rachael seeded!"
rachael_profile = Profile.create!(
  name: "Rachael Miller",
  bio: "👋🏼 I've spent the last 2 years working for a digital startup incubator company which builds disruptive new businesses for the worlds largest firms. In this time, I've been able to shadow the work of software engineers, and have been inspired to learn to code myself! Prior to working for this company, I studied Philosophy at the University of Leeds. This involved studying formal logic, which I found challenging but fascinating",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: rachael.id
)
rachael_profile.photo.attach(io: file13, filename: "Rachael.png", content_type: "images/png")
rachael_profile.save!

file14 = File.open("./db/images/Nicole.png")
nicole = User.create(email: "nicole@lewagon.com", password: "123456")
puts "Nicole seeded!"
nicole_profile = Profile.create!(
  name: "Nicole Moncrieffe",
  bio: "Hi there! My name is Nicole. I am a Psychology graduate, and i've worked in Market Research for nearly two years. After learning to code in my old role as well as completing an introduction to coding course I knew this was my next career pursuit! Looking forward to learning more at Le wagon!",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: nicole.id
)
nicole_profile.photo.attach(io: file14, filename: "Nicole.png", content_type: "images/png")
nicole_profile.save!

file15 = File.open("./db/images/Mark.png")
mark = User.create(email: "mark@lewagon.com", password: "123456")
puts "Mark seeded!"
mark_profile = Profile.create!(
  name: "Mark Murphy",
  bio: "My names Mark and I am 26 and studied politics and sociology at university and previously worked in property management. Im looking forward to learning web development and coding to broaden my horizons, and explore new career opportunities.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: mark.id
)
mark_profile.photo.attach(io: file15, filename: "Mark.png", content_type: "images/png")
mark_profile.save!

file16 = File.open("./db/images/Edward.png")
edward = User.create(email: "edward@lewagon.com", password: "123456")
puts "Edward seeded!"
edward_profile = Profile.create!(
  name: "Edward Plowden",
  bio: "I studied politics and sociology at Oxford Brookes University, and after graduating developed an interest in coding. I mostly enjoy the creative element. I plan to get a job as a full stack web developer.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: edward.id
)
edward_profile.photo.attach(io: file16, filename: "Edward.png", content_type: "images/png")
edward_profile.save!

file17 = File.open("./db/images/Aaron.png")
aron = User.create(email: "aron@lewagon.com", password: "123456")
puts "Aron seeded!"
aron_profile = Profile.create!(
  name: "Aron Sayes",
  bio: "I was an economics student in UCL but realised that the course wasn't for me and chose to go back to my first passion in life, which would be coding.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: aron.id
)
aron_profile.photo.attach(io: file17, filename: "Aaron.png", content_type: "images/png")
aron_profile.save!

file18 = File.open("./db/images/Stefan.png")
stefan = User.create(email: "stefan@lewagon.com", password: "123456")
puts "Stefan seeded!"
stefan_profile = Profile.create!(
  name: "Stefan Shambrook",
  bio: "For the last 10 years I've been working in hospitality. My main goal is to transition into the software development industry and land a job as a junior developer in London.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: stefan.id
)
stefan_profile.photo.attach(io: file18, filename: "Stefan.png", content_type: "images/png")
stefan_profile.save!

file19 = File.open("./db/images/Pouyan.png")
pouyan = User.create(email: "pouyan@lewagon.com", password: "123456")
puts "Pouyan seeded!"
pouyan_profile = Profile.create!(
  name: "Pouyan Soltanpour",
  bio: "I have studied Civil engineering at the University of Birmingham and since 2015 following my graduation I have worked in property management and letting. In 2022 I decided to change my career path and have completed the CS50 Harvard course and following the completion of Le Wagon I'd like to continue my studies to be a Blockchain Developer.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: pouyan.id
)
pouyan_profile.photo.attach(io: file19, filename: "Pouyan.png", content_type: "images/png")
pouyan_profile.save!

file20 = File.open("./db/images/Stephen.png")
stephen = User.create(email: "stephen@lewagon.com", password: "123456")
puts "Stephen seeded!"
stephen_profile = Profile.create!(
  name: "Stephen Teodore",
  bio: "Hi! I'm Stephen Teodore and I'm a graphic designer. Learning code to expand my technical skill to allow me to do more! Hoping to tap into tech+creative space for work after.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: stephen.id
)
stephen_profile.photo.attach(io: file20, filename: "Stephen.png", content_type: "images/png")
stephen_profile.save!

file21 = File.open("./db/images/Sunisha.png")
sunny = User.create(email: "sunny@lewagon.com", password: "123456")
puts "Sunny seeded!"
sunny_profile = Profile.create!(
  name: "Sunisha Thapa",
  bio: "I go by Sunny. Sometimes I paint but have mainly been stuck behind a bar. I've joined to learn something new, meet some interesting people and perhaps a career change. Come say hi - I'll be the small blob in black.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: sunny.id
)
sunny_profile.photo.attach(io: file21, filename: "Sunisha.png", content_type: "images/png")
sunny_profile.save!

file22 = File.open("./db/images/Richard.png")
richard = User.create(email: "richard@lewagon.com", password: "123456")
puts "Richard seeded!"
richard_profile = Profile.create!(
  name: "Richard Vidor",
  bio: "Previously worked in corporate banking at MUFG Bank and currently working part-time at Nuffield Health. Looking to change career to software engineering.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: richard.id
)
richard_profile.photo.attach(io: file22, filename: "Richard.png", content_type: "images/png")
richard_profile.save!

file23 = File.open("./db/images/Robert.png")
robert = User.create(email: "robert@lewagon.com", password: "123456")
puts "Robert seeded!"
robert_profile = Profile.create!(
  name: "Robert Willcox",
  bio: "One of my biggest passions has always been food. I completed a 3 year professional chef diploma at the renowned Westminster Kingsway and have been a chef for over a decade, having worked in numerous positions across the globe including Head, Sous & Pastry Chef. Besides food, another passion has always been travel, I have travelled extensively throughout South East Asia and South America as well as many other continents including Europe, Africa and Australasia. Working remotely has always been a goal of mine and with this in mind I decided to pursue a new career to enable me to do this. Over the past year I have studied several coding languages in my own time and now hope to work my way into the tech sector as a developer. Le Wagon will hopefully help me to achieve this goal!",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: robert.id
)
robert_profile.photo.attach(io: file23, filename: "Robert.png", content_type: "images/png")
robert_profile.save!

file24 = File.open("./db/images/Johnny.png")
johnny = User.create(email: "johnny@lewagon.com", password: "123456")
puts "Johnny seeded!"
johnny_profile = Profile.create!(
  name: "Johnny Wordsworth",
  bio: "I write an AI newsletter and have spent some time working in eCommerce, M&A and start-ups. Super interested in tech and how to use it. Learning to code in order to understand how to ship a product.",
  day_rate: rand(350..500),
  rating: rand(7..10),
  category: category.sample,
  user_id: johnny.id
)
johnny_profile.photo.attach(io: file24, filename: "Johnny.png", content_type: "images/png")
johnny_profile.save!

puts "seeds created"
