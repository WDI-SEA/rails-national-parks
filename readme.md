# National Parks

The National Park Service was created in 1916 by President Woodrow Wilson in order to preserve America's natural and historic scenery. The NPS oversees over 400 units of preserves, monuments, battlefields, and parks. 59 of these units are officially designated as National Parks.

Let's create an app to showcase these wonderful parks.

##Getting Started

* Fork and clone this repository
* Follow the recommended process for creating your Rails app. 

##Components

### Models

* A `Park` model that stores the following attributes. Choose the appropriate data types for each (`string` or `text`)
  * `name`
  * `description`
  * `picture` (for now, have this store a URL to a picture of a park)

### Controllers

* A controller for your home page
* A controller for your `Park` model

### Routes and Views

| route | description | controller |  action/view |
|-------|-----|----|-----|------|
| GET /  | Your home page | home | index |
| GET /parks | list all parks | parks | index |
| GET /parks/new | show add park form | parks | new |
| POST /parks | create park | parks | create (no view) |
| GET /parks/1 | list park (id=1) | parks | show |
| GET /parks/2/edit | show edit park form (id=2) | parks | edit |
| PUT /parks/3 | update an existing park (id=3) | parks | update |
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

* Style the home page. Play around with adding a navigation bar or carousels.
* If using Bootstrap, use the [Bootstrap form helper](https://github.com/bootstrap-ruby/rails-bootstrap-forms). Makes Bootstrap forms easily.

