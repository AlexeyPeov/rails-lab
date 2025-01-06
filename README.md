# README

* Ruby version: 3.1.3p185 (2022-11-24 revision 1a6b16756e) [x64-mingw-ucrt]

* Configuration :

  add .env file that should look like so:

  DATABASE_URL_DEV="postgres://username:password@localhost/ruby_labs_development"

  then run:
  
  bundle install
  
  rails db:migrate

* Deployment instructions

  in the root of the project run this command in the terminal:
  
  rails s
