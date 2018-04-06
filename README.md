# Backend developer test

This is a RESTFUL API application demonstrating the register and login features using Ruby on Rails and JSON Web Tokens. 

Here are some main classes and modules in this project:

	JsonWebToken: Encode and decode JWT tokens with payload and secrets key
	AuthorizeApiRequest: Authorize each API request with token
	AuthenticateUser: Authenticate users with email and password
	AuthenticationController: Authentication process, return token if valid credentials
	ExceptionHandler: Handle exceptions, return message and status code

This application using PostgreSQL database.

## Getting started

To run this demo, you need to run Ruby 2.2.2 or higher and Rails 5.

To install the gems and migrate database by running:

    bundle install
    rake db:create
    rake db:migrate

## How to run the test suite

To test that it works we can use 'RSpec' to see it working:

    bundle exec rspec

The result should be like this:

	Finished in ...
	19 examples, 0 failures

## Run
To get the app up and running, run the command:
	
	rails server

## How to use APIs

### The signup API

URL: /signup
Method: POST
Params: 
	username: unique, required
	email: unique, required
	password: required
	first_name
	last_name
	gender: [male, female, other]
Response: 
	Status: [200, 401, 422, 500]
	Headers: Content-Type:application/json; charset=utf-8
	Body: message

### The login API

URL: /auth/login
Method: POST
Params: 
	email: required
	password: required
Response:
	Status: [200, 401]
	Headers: Content-Type:application/json; charset=utf-8
	Body: [auth_token, message]

## License: MIT
