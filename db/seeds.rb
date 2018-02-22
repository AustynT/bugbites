Country.create(name:"United States")

puts "You have created one country from United States."

Country.create(name:"Canada")

puts "You have created one country from United States."

State.create(name:"Utah", country_id: Country.first.id)

State.create(name:"South Caronlina", country_id: Country.first.id)

puts "You have created two states that belong to United States"

State.create(name:"Alberta", country_id: Country.second.id)

State.create(name:"Noca Scotia", country_id: Country.second.id)

puts "You have created two states that belong too Canada"

Blog.create(title:"This is my title for Utah", body:"this is my body for utah", state_id: State.first.id )

Blog.create(title:"This is my title for South Caronlina", body:"this is my body for South Caronlina", state_id: State.second.id )


Blog.create(title:"This is my title for Utah", body:"this is my body for utah", state_id: State.third.id)

Blog.create(title:"This is my title for South Caronlina", body:"this is my body for South Caronlina", state_id: State.fourth.id)

puts "You have made four blog posts"
