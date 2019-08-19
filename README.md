# Ruby on Rails - Ruby & Ruby on Rails Basics - Introduction to Ruby on Rails - Project

## Step One - Generate Rails App

1. Create a new rails app using the rails app generator

2. Scaffold the resources shown below using rails generators

*Note: Don't forget to initialize and setup the database as part of your scaffolding process.*

**`User`**

| attribute  | type     |
| ---------- | -------- |
| id         | integer  |
| email      | string   |
| active     | boolean  |
| created_at | datetime |
| updated_at | datetime |

**`Task`**

| attribute    | type     |
| ------------ | -------- |
| id           | integer  |
| name         | string   |
| priority     | integer  |
| completed_at | datetime |
| created_at   | datetime |
| updated_at   | datetime |

## Step Two - Explain Rails MVC

Write all of your answers to the questions below in a separate readme named SOLUTIONS.md.

### Rails MVC

First, start the rails server. Then, make a request to `/tasks/new`, fill out the form and submit it in order to create a new task.

1. What controller and action handles the data from the form submission?

  The tasks_controller would be used with the "new" action to render the form. The "create" action would handle a submission.

2. What controller and action would be used if you did a `GET` request on the `/users` route?

  The users_controller would be used. The "index" action would be used if a GET request was performed.

3. Write out the step-by-step process that your rails application will take to render the `tasks/new` route.

  It will go into the routes file, find the necessary controller, 
  then use the controller to create a new task and pass that to a view file to return the results.

4. What file is responsible for managing the mapping between your application and the `tasks` database table?

  The "task" file inside of the models folder.

### Rails RESTful Actions

5. Explain all 7 of the RESTful actions in Rails

   - List each action by its name
      INDEX, NEW, EDIT, SHOW, CREATE, UPDATE AND DESTROY

   - Explain which HTTP verbs pair with each action
      INDEX = GET, SHOW = GET by ID, NEW = GET, EDIT = GET, CREATE = POST, UPDATE = PATCH OR PUT, DESTROY = DELETE

   - Write a short sentence for each action that summarizes what it does
      INDEX uses a get request to return the contents of the db migration
      SHOW uses a get request to return a specific item by its id from the db.
      NEW and EDIT are both web-form related get requests that are only useful on the front end. Not necessary for back-end API creation.
      CREATE handles data creation via POST request.
      UPDATE is used to update data using either a patch or put.
      DESTROY is used to delete data.

## Step Three - Modify Routes

Our application has all 7 actions available for both Users and Tasks. We don't want that--we want to set limits on these resources.

  - Limit users resource to *only* allow `index` and `show`

  - Limit tasks resource to allow everything *except* `destroy`

  - remove the corresponding controller actions that are no longer routable

## Step Four - Use Rails Console to Create a User

We removed the routes to create a User because we only want developers to be able to do that. The way our developers will create new users for this app is to use the rails console. Use the rails console to create 2 users. Paste the commands you used into the `SOLUTIONS.md` file.

 command used to create user. User.create(email: "blah@aol.com", active:true)
