# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Local Development

1. Create a `role` in `postgresql` with your username. 
    
    Eg, my username is `bryan`, run the following

    `sudo -u postgres createuser bryan -s && sudo -u postgres psql`

    Then, enter `\password bryan` and enter a password of your choice (not used)

    By default, `postgresql` will use your username for authentication. 

    See chat here; [https://chat.stackoverflow.com/rooms/94658/discussion-between-max-and-fares-k-a](https://chat.stackoverflow.com/rooms/94658/discussion-between-max-and-fares-k-a)
