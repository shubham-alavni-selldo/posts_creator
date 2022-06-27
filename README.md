# README

This README would normally document whatever steps are necessary to get the
application up and running.

## Headers to all requests

Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNjU2MzEwMDg0LCJleHAiOjE2NTc2MDYwODQsImp0aSI6ImNhMGI5YWE3LTZkYzctNGUyMC1iYzk0LWVkNjczMDEyMzQ5OCJ9.1ezjdiAv8vDK1pzVy0SLnM-YYmC6z14hbP1YhaVI3PU

## Headers to POST requests

Content-Type: application/json

## Api requests:

### Sign up

method: POST
url: http://localhost:3000/users
body: { "user": { "email": "swathi2@example.com", "password": "password" } }

### Sign in

method: POST
url: http://localhost:3000/users/sign_in
body: { "user": { "email": "swathi1@example.com", "password": "password" } }

###  To Create Post

method: POST
url: localhost:3000/api/v1/posts
body: { "post": { "title": "New post", "content": "New posts are always test posts. That is a fate of a new post." } }

###  To view all Posts, by any user, sorted by max comments

method: GET
url: http://localhost:3000/api/v1/posts?user_id=2&sort_by=comments, http://localhost:3000/api/v1/posts

###  Get comments for Posts

method: GET
url: http://localhost:3000/api/v1/posts/:id/comments

###  To comment on a Post

method: POST
url: http://localhost:3000/api/v1/posts/:id/comments
body: { "comment": { "body": "This is new comment to test reply" } }

###  Get Popular Posts

method: GET
url: http://localhost:3000/api/v1/popular_posts

###  Maximum comments by user

method: GET
url: http://localhost:3000/api/v1/max_comments_by_user

###  Reply to a comment

method: POST
url: http://localhost:3000/api/v1/:comment_id/reply
body: { "reply": { "body": "This is one awesome post I have read in recent days" } }
