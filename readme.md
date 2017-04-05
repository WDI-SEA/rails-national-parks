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

<<<<<<< HEAD
* ...
=======
| route | description | controller |  action/view |
|-------|-----|----|-----|
| GET /  | Your home page | home | index |
| GET /parks | list all parks | parks | index |
| GET /parks/new | show add park form | parks | new |
| POST /parks | create park | parks | create (no view) |
| GET /parks/1 | list park (id=1) | parks | show |
| GET /parks/2/edit | show edit park form (id=2) | parks | edit |
| PUT /parks/3 | update an existing park (id=3) | parks | update (no view) |
| DELETE /parks/3 | delete an existing park (id=3) | parks | destroy (no view) |

**Remember:** you can list all routes by running `rake routes` at the command line.

##Recommended Process

###Create basic app

* Fork and clone this repo
* cd into the directory
* Create app `rails new ./ -T -d postgresql`
* Create database `rake db:create`
* Test app
  * Run server `rails s`

###Build specific functionality

* Create model `rails g model ...` (you write the rest of this command)
* Migrate `rake db:migrate`
* Test models
  * run console `rails c`
  * Try some stuff...
    * `Park.all`
    * `Park.create`
    * `Park.new`
    * `Park.find`
* Create functionality
  * Add routes to `routes.rb`. Use `resources` to create a set of RESTful CRUD routes
  * Add controllers, actions, and views where appropriate
  * Add functionality for each controller action
  * Test as needed

## Styling

* Style the pages. Play around with adding a navigation bar or carousels.
* If using Bootstrap, use the [Bootstrap form helper](https://github.com/bootstrap-ruby/rails-bootstrap-forms). Makes Bootstrap forms easily.

## Bonuses

* Create a seed file to load some National Parks
* Replace the URL links with Cloudinary uploads.
  * [Cloudinary Gem](https://github.com/cloudinary/cloudinary_gem)
  * [Cloudinary Upload Notes](https://wdi_sea.gitbooks.io/notes/content/06-ruby-rails/additional-topics/rails-cloudinary/readme.html)

---

## Licensing
1. All content is licensed under a CC-BY-NC-SA 4.0 license.
2. All software code is licensed under GNU GPLv3. For commercial use or alternative licensing, please contact legal@ga.co.
>>>>>>> e19ae0ae39ad2a4d988ec05b7088becd73c538e6
