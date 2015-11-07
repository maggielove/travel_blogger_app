# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a = User.create(username: 'user1', password: 'password', password_confirmation: 'password', byline_name: 'User the First', bio: 'Traveling the  world, loving life')

b = User.create(username: 'user2', password: 'password', password_confirmation: 'password', byline_name: 'User the Second', bio: 'Searching for the world\'s best cheese')

c = User.create(username: 'user3', password: 'password', password_confirmation: 'password', byline_name: 'User the Third', bio: 'Around the world in 80 days')

a.posts.create(title: 'London Calling', body: 'London test post')

a.posts.create(title: 'Vacationing in Rome', body: 'Eat pray loving it. Mostly eating.')

b.posts.create(title:'Limoges Post', body: 'Sample Limoges post body.')

b.posts.create(title: 'Bordeaux Post', body: 'Sample Bordeaux post.')

c.posts.create(title: 'Amsterdam Post', body: 'Went to the Van Gogh Museum. It was pretty cool.')
