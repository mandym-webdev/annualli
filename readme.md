# Annual.li

### GA WDI DC September, 11 2014, Project 1

### Overview

Annualli is a 5-Year Journaling app in which users are presented with a different question each day for a year.  The following year they answer the same questions so they can compare their answers year-over-year.

[Visit Annual.li](http://www.annual.li)

### Local Setup

    rake db:create
    rake db:migrate
    rake db:seed
    rails s

### Technologies Used

* Ruby (2.1.2)
* Rails (4.1.5)
* PostgreSQL Database
* User Authentication via Devise

### User Stories Implemented

* Users can register for an account
* Users can see and answer daily questions
* Users can view their own user account with past questions and answers
* Users can view the questions and answers others have answered
* Users can tag their answers

### Additional Planned Functionality

* Ability to login with Facebook and Twitter
* Ability to like answers
* Ability to follow other users
* Ability to share qustions on your social networks
* Geolocation of answers with display on a google map
* Expanded user profiles
* Enhanced Tagging
* Ability to flag, edit and delete answers

### ERD

[The ERD for this project](http://www.gliffy.com/go/publish/image/6155896/L.png)

![](http://www.gliffy.com/go/publish/image/6155896/L.png)