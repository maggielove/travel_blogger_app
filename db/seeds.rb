# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: 'user1', password: 'password', password_confirmation: 'password', byline_name: 'User 1', bio: 'Traveling the  world, loving life')

User.create(username: 'user2', password: 'password', password_confirmation: 'password', byline_name: 'User the Second', bio: 'Searching for the world\'s best cheese')

User.first.posts.create(title: 'First post!', body: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.')

User.first.posts.create(title: 'Second post!', body: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMake.')

User.second.posts.create(title: 'User 2 first post', body: 'If you want great cheese, go to France...')

User.second.posts.create(title: 'User 2 second post', body: 'The word \'smelly\' gets thrown around a lot in discussions about cheese...')
