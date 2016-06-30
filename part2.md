# National Park - Part 2

* Finish adding rangers (as done in class)
* Create CRUD routes for rangers

| route | description | controller |  action/view |
|-------|-----|----|-----|------|
| GET /rangers | list all rangers | rangers | index |
| GET /rangers/new | show add ranger form, as well as parks the ranger can be added to | rangers | new |
| POST /rangers | create ranger | rangers | create (no view) |
| GET /rangers/1 | list ranger and the parks the ranger works at (id=1) | rangers | show |
| GET /rangers/2/edit | show edit ranger form (id=2) | rangers | edit |
| PUT /rangers/3 | update an existing ranger (id=3) | rangers | update |
| DELETE /rangers/3 | delete an existing ranger (id=3) | parks | destroy (no view) |

##Bonus

###Display a warning when deleting a ranger

Make `ranger#destroy` warn the user with an alert before removing the ranger, since that's a lot of information destroyed in one click: "Are you sure you want to delete this ranger?" Then remove the ranger.

Documentation on this functionality can be found here:

http://api.rubyonrails.org/v4.0.0/classes/ActionView/Helpers/UrlHelper.html#method-i-link_to

###Support ranger creation from `park#new` `park#edit`

The user should be able to add rangers when creating/editing a park. If the ranger already exists he/she should not be duplicated and just be associated. If the ranger doesn't exist, he/she should be created and associated.

**Implementation Options**

* Text field separated with commas for each ranger: "Brian, Paul, Lenny"
* Build a complex form, with a separate text field for each ranger
  * http://guides.rubyonrails.org/form_helpers.html#building-complex-forms
