# travel_blogger_app (GA Project 2)

[My hosted working app!](https://intense-lowlands-8490.herokuapp.com/)

[Wireframes](https://travelbloggerapp.mybalsamiq.com/projects/travelblogger/edit)

---

###User Stories

* As a user, if I do not have an account, I want to be able to create an account with a username, short bio, and picture.
* As a user, I want to be able to write a new blog post and add pictures to the post. 
* As a user, I want to edit one of my posts. 
* As a user, I want to delete one of my posts. 
* (As a user, I want editing/deleting capabilities for my posts restricted to me.)
* As a user, I want to see an individual post.
* As a user, I want to be able to "file" my post under a city.
* As a user, I want to be able to comment on others’ posts. If I'm logged in, I want my username to be attached to my comment.
* As a user, I want to be able to see featured stories. 
* As a user, I want to be able to easily navigate the site from every page.
* As a user, I want to be able to be able to view posts organized by city, (then by) topic (food, fashion, etc.) 
* As a user, I want to see a user's profile page, which will contain a list of posts by that user.
* As a user, I want to be able to "like" others' posts.
* As a user, I want to see the most popular posts on the site (determined by number of likes)

---

#Technologies Used

* **Ruby on Rails**  
    *     gems: Paperclip (dependent on ImageMagick)
    *     styled with HTML and CSS 
* **Heroku**

---
#Approach Taken 

I started by wireframing the various views I wanted for my app. Then I diagrammed the relationships between my models. Originally I was shooting for 9 models: User, Post, Comment, Category, City, Tag, Tagging, Liking, and Like. (Category was going to be a sub-category for a city, or a category on its own, such as "Food", "Shopping", "Entertainment", etc. (Tag would be any random tag the user wanted to add.) I then started coding just User and Post, then added Comment. 

Once I tried to add City, it got tricky. I started City as part of a polymorphic association with User and Post (because I wanted each post to have only one city), and nested the route for City between my user and post routes, so a user would have been forced to enter a city before writing a post. This seemed counterintuitive to me, and the nested routes were getting complicated, so I spent many hours going back to a previous commit (since I was doing this all on my master branch) and fixing git merge issues. I ended up using a many_to_many through association, which simplified things (and gives the user the option to create an article without adding a city, which has pros and cons.)

---

#Ideas to Further This App 

* 


