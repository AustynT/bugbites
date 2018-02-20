# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |blog|
  Blog.create(title: "my-blog-#{blog}",
              body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Magna etiam tempor orci eu lobortis elementum nibh tellus. Netus et malesuada fames ac turpis egestas maecenas pharetra convallis. Sed faucibus turpis in eu mi bibendum neque. Facilisis leo vel fringilla est ullamcorper eget nulla facilisi etiam. Dui faucibus in ornare quam viverra orci sagittis eu. Egestas purus viverra accumsan in. Eget sit amet tellus cras adipiscing. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Odio morbi quis commodo odio aenean sed adipiscing.")
end