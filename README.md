# Let's Go, Kiddo!
Rain or shine, families can have a great time! Tired of the same old places you take your family? Look up places of interest for your children with Let's Go, Kiddo! Get location info, comment on a place and what you thought of it for others to see. 

## Link

[Let's Go, Kiddo](https://lets-go-kiddo.herokuapp.com/)

## Technologies Used
* Built with Ruby on Rails 5.1.4
* PostgreSQL/Active Record
* Bootstrap
* HTML/CSS
* Heroku (app deployment)
* Adobe Illustrator (wireframes)

### Gems
*FFaker

## Wireframes 
![alt text](https://github.com/jojobeth1/kiddo/blob/master/wireframes-kiddo.png "Wireframes for Project Kiddo")

## User Stories
Splash Page
1. A user can view index page
2. A user can sign up to use the app or sign in ( stretch goal with Facebook account)*

Profile Page
1. A user can view profile along with post they created
2. A user can see all posts
3. A user can edit their own post

Places Page
1. A user can add a new place 
2. A user can comment about a place. * 
3. A user can ‘add to’ favorites. *
4. A user can see all Places for a city.*
5. A user can upload photos for place.*

_Note: * Future Feature_

## Installation Steps
1. Make sure you have Ruby on Rails installed. See here for [directions](http://installrails.com/steps/choose_os) if you do not. 

2. Clone this github repo `$ git clone [copied repo url]`

3. Change directory (cd) into the folder

4. Run `$ rails s` in another terminal window to start the server. 

5. Go to `localhost: 3000`

6. Run `$ rails db:migrate` to build database. 


## Entity relationship diagrams
![alt text](https://github.com/jojobeth1/kiddo/blob/master/ERD.png "ERD for Project Kiddo")


## Future Development
* Front-end design
* ability to add a user photo/avatar.
* email confirmation when a user creates an account.
* change forms to modals. 
* Dashboard set up for user. User will be able to see the cities and places they added. 
* buttons for social media
* implement Google maps
* implement Foursquare API for places
