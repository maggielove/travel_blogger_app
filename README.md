# travel_blogger_app (GA Project 2)

[My hosted working app!](https://intense-lowlands-8490.herokuapp.com/)

[Wireframes](https://travelbloggerapp.mybalsamiq.com/projects/travelblogger/edit)

---

###User Stories

* As a user, if I do not have an account, I want to be able to create an account with a username, short bio, and picture.
* As a user, I want to be able to write a new blog post and add pictures to the post. 
* As a user, I want to edit one of my posts. 
* As a user, I want to delete one of my posts. 
* As a user, I want editing/deleting capabilities for my posts restricted to me.
* As a user, I want to see an individual post.
* As a user, I want to be able to "file" my post under a city.
* As a user, I want to be able to comment on others’ posts. If I'm logged in, I want my username to be attached to my comment.
* As a user, I want to be able to see featured stories. 
* As a user, I want to be able to easily navigate the site from every page.
* As a user, I want to be able to be able to view all posts about a certain city.
* As a user, I want to see a user's profile page, which will contain a list of posts by that user.


---

#Technologies Used

* **Ruby on Rails**  
    *     gems: Paperclip (dependent on ImageMagick), bcrypt
    *     styled with HTML and CSS 
* **Heroku**

---
#Approach Taken 

I started by wireframing the various views I wanted for my app. Then I diagrammed the relationships between my models. Originally I was shooting for 9 models: User, Post, Comment, Category, City, Tag, Tagging, Liking, and Like. (Category was going to be a sub-category for a city, or a category on its own, such as "Food", "Shopping", "Entertainment", etc. (Tag would be any random tag the user wanted to add.) I then started coding just User and Post, then added Comment. 

Once I tried to add City, it got tricky. I started City as part of a polymorphic association with User and Post (because I wanted each post to have only one city), and nested the route for City between my user and post routes, so a user would have been forced to enter a city before writing a post. This seemed counterintuitive to me, and the nested routes were getting complicated, so I spent many hours going back to a previous commit (since I was doing this all on my master branch) and fixing git merge issues. I ended up using a many_to_many through association, which simplified things (and gives the user the option to create an article without adding a city, which has pros and cons.)

I managed the sessions and session personalization using bcrypt and ternary operators. Late in the project, I stumbled upon the Devise gem--would be interested to figure out if that would give me more personalization options once a user is logged in. 

---

#Ideas to Further This App 

* Attach pictures to comments (similarly to the way I currently have authors assigned) that match a user's profile picture. 
* Give the user the ability to "like" a post
* Set it so that the "Featured Stories" on the homepage are the posts with the most likes. 
* Set it so that the Top Destinations listed on the homepage are either based on most liked posts or user surveys asking which cities they'd like to read about. 
* Give post creators the opportunity to assign categories to their posts (via drop-down list), such as "food" or "art". This way, users could search for a post based on category, city, or both. 
* Give the post creator the opportunity to add random tags.
* When users are adding a city to their post, give them a drop-down list to select from so that they won't accidentally make a typo, making it difficult for users to find their post. 
* Organize cities by continent 
* Organize cities on the homepage alphabetically. 
* Make the site searchable.
* Make it so that if there is only one article on a city, and that article is deleted, when the user gets to that city's page there is a note to the effect of, "We're sorry, there are currently no posts about X. {Interested in writing one?}"
* Improve the nav bar
* For user profile page: add "Member Since [join date]"
* Give users the option to edit or delete their accounts.
* Style the new post form so users don't have to drag the post body box to make it bigger. 



