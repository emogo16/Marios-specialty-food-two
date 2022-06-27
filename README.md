# Marios Specialty Food Products 


#### By _**Erika Estefania Mogollon**_

## Technologies Used

* _Git Bash_
* _VS Code_
* Ruby on Rails
* _Rspec_
* _Pry_
* _Gemfile_
* _Github_
* _Capybara_
* _Sinatra_
*  _Postgres_
*  _PSQL
*  _ActiveRecord


## Description

This will allow a user to add food products and reviews. It will also allow the user to view, update, and delete products. 

## Setup/Installation Requirements

Go  to your web browser of your choice.

Then clone this reposiroty to your device. 'git clone'

'cd marios_food_code_review'

'bundle install' the project

Now you can run 'rake db:create'

Then run 'rake db:test:prepare'

Then run 'rake db:migrate'

Then run 'rake db:seed'

Then run 'pg_ctl start' to start up a psql server or 'rails s'

To start up a rails server run 'rails s', then navigate to localhost:3000 in your browser.

You can create an account to be a user

To become an admin, open the rails console by running 'rails c' in your terminal

Locate your account by entering 'User.where' Here you will see your account

Once you locate your account, you will need to set your admin privileges to true

In the terminal run the command 'User.where(email: "YOUR EMAIL HERE").update(admin: true)'

Go back in your web browser, to see all the admin privileges

## Known Bugs

There is no known bugs at the moment

## License

https://en.wikipedia.org/wiki/MIT_License

Copyright (c) _1/13/2022_ _Erika Estefania Mogollon_
