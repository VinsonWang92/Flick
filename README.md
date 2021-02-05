# Flick

A movie app

## Installation notes

To generate a new master.key and credentials.yml.enc:
Delete credentials.yml.enc then run the below code in your ternimal.

`EDITOR="code --wait" rails credentials:edit`

## Description of your website, including:

- Purpose

  - We've been approached by Netflix to create an application that will reduce the time of users scrolling through their library and to make a decision quicker on which media to consume. The aim of the application will be to allow users to create watchlists, compare with their friends watchlists and to have a randomizer pick a choice to watch for them. Ultimately, this will lead to increased watching time as it reduces the friction of decision making especially if there are multiple parties involved, a very common issue with people in relationships deciding on what to watch. Having the data on what people are placing in their watchlists will allow Netflix to more accurately decide what content to include in their library and which licences to extend and which licences to forgo.

- Functionality / features

  - Ability to swipe left(dislike) and right(add to watchlist)
  - User authentication
    - Create login with username/email and password
    - Users can log out
    - Users can login using google/microsoft/social media accounts (stretch goal)
  - Adding friends
  - Maintain and edit your watchlist
  - View friend's watchlist
  - Compare watchlists with friend/friends
  - Randomizer to choose a title to watch
    - You can filter based on time/genre for the randomizer to pick titles from
  - Maintain a watched list

- Target audience
  ![target audience infographic](./img/TAinfo.jpg)
- Tech stack
  - Front End
    - HTML 5
    - CSS
    - Javascript
    - React JS
  - Back End
    - Ruby on Rails
  - Database
    - PostgreSQL
  - Source control
    - Github
  - Project Management
    - Trello
    - Discord

---

## User stories

### Persona 1 - Jason

![jason headshot](./img/jason.png)

Jason is a single student with lots of leisure time in between studies. He loves to consume media and in particular watching movies and tv shows. He frequently has shows that he's been "meaning to watch" but does not get around to it and instead watches shows that he has already seen on repeat due to the familiarity

#### Goal

To help Jason keep track of things he wants to watch with a watchlist and then help him choose where to start if he has trouble deciding

#### Motivations

Jason wants to be less boring and have more to talk about with others in terms of shows rather than having to rely on the same jokes from "The Office"

#### User stories

- As Jason I want to be able to view summaries of movies and shows and add them to a watchlist
- As Jason I want to be able to create my own account and save my watchlist
- As Jason I want to have someone/something else decide on what to watch next
- As Jason I want to see what my friends are interested in seeing and add them to my watchlist

### Persona 2 - Tiffany

![tiffany headshot](./img/tiffany.png)

Tiffany is a recent university graduate that has entered the workforce and has just moved in with her partner. She has an hour or two after work to be able to sit down and enjoy time with her partner and one of their favorite past times is to watch a new show or movie together. However, more often than not they spend most of the time scrolling through a never ending library of titles and never settle on anything or just rewatch something they're familiar with

#### Goal

To help Tiffany and her partner to generate separate watchlists that we can compare and allow them to pick a title that they're both interested in. If they cannot decide the application will randomly choose one for them

#### Motivations

Tiffany wants to have less arguments and be more decisive with what they're going to watch during their limited free time

- As Tiffany I want to be able to set up my own watchlist and have my partner do the same
- As Tiffany I want to be able to compare watchlists and find shows/movies that we both are interested in
- As Tiffany I want someone to help us decide what to watch
- As Tiffany I want to be able to filter the choice made for us by the length of the movie or show

### Persona 3 - Adam

![adam headshot](./img/adam.png)

Adam is a 40 year old man that is a crowd pleaser. He frequently hosts dinner parties and games nights where they often settle on watching a movie when people are not up for more stimulating activities. Adam is always worried that one of his guests is not enjoying the movie which gives him great anxiety and people are just not speaking up out of politeness.

#### Goal

To help Adam's guests find a movie or show that they're all interested in/haven't watched before so that everyone can enjoy the night and Adam doesn't need to worry about whether someone is suffering in silence.

#### Motivations

Adam wants to be his gatherings to be a blast for everyone and have an easy way to determine what to watch amongst a group of 6-10 people.

- As Adam I want to be able to compare watchlists with multiple friends
- As Adam I want to be able to set up watchlists quickly for those who do not have the application (signing up using google account)
- As Adam I want to be able to filter quickly be genres
- As Adam I want to see what my friends have already watched

---

## Application Architecture Diagram

![](img/Application-architecture-diagram.jpg)

---

## Data Flow Diagram

![](img/Data-flow-diagram.jpg)

---

#### ERD Diagram

![](img/ERD_Flick.jpg)

---

## Wireframes

### Homepage

![](img/Homepage.png)

### Create account

![](img/CreateAccount.png)

### Sign in

![](img/SignIn.png)

### Flick!

![](img/Flick!.png)

### Movie list

![](img/MovieList.png)

### Friends

![](img/Friends.png)

### Profile

![](img/Profile.png)

---

## Trello board progress

### Jan 18 2021

![](img/trello_20210118.png)

### Jan 20 2021

![](img/trello_20210120.png)

### Jan 24 2021

![](img/trello_20210124.png)

![image-20210124221127529](/Users/robyn/Library/Application Support/typora-user-images/image-20210124221127529.png)
