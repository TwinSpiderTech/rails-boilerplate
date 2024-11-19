## Getting Started

### Requirements
- Ruby 3.0.0
- Rails 7.0.4

### Install

```
git clone https://github.com/TwinSpiderTech/rails-boilerplate.git
cd rails-boilerplate

bundle install
rails db:create
rails db:migrate

rails s
```

## Adding Devise

<h3>STEP 1 — Create a Rails App</h3>

Open a new terminal

• Execute the command — ```rails new rails-boilerplate``` . This will a create a new rails app. You will see a new folder rails-boilerplate in the directory in which you opened the terminal. This directory is the root directory for our project.



<h3>STEP 2 — Add Devise to Rails</h3>

• Now, we will add Devise to rails. To do this, open the file called Gemfile located in the rails-boilerplate directory. Add a line gem 'devise' as shown.
//Add the following line
```gem 'devise'```

• Now open the terminal in the root directory of our project and execute the following commad — ```bundle install``` . This will download the Devise gem (package) in our application.

• Now, we must run the generator. Execute the following command ```rails generate devise:install``` . At this point, a number of instructions will appear in the console. These instructions contain steps to configure your rails app so that Devise can be easily integrated with your Rails Web Application.

• According to the first instruction, we have to paste the code — ```config.action_mailer.default_url_options = { host: ‘localhost’, port: 3000 }``` in the file ```config/environments/development.rb``` as shown below
```config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }```

• The second instruction asks us to add a root url to our ```config/routes.rb``` file. Open the file and paste the following code in it.
```ruby
Rails.application.routes.draw do
  root to: "home#index"
end
```
• The third instructions asks us to add some HTML tags in the web page so that Devise can display notifications like Logged In Successfully etc. to the users. Paste the following two paragraph tags inside the body tag as shown in the code snippet.
```
<body>
    <p class="notice"><%= notice %></p>
    <p class="alert"><%= alert %></p>
    <%= yield %>
  </body>
</html>
```

• Now, we have to add some devise specific views to our app. The fourth instruction tells us how to do this. Just execute the following command on the terminal opened in the root directory of our project — ```rails g devise views```



<h3>STEP 3 — Add the Controller</h3>

• Now that we have added Devise to our Rails app, we will now create a controller to handle the various routes.

• We added a root url while setting up devise. Let’s create a controller for that first. Execute the following command in the terminal to generate a Controller called home with a path called index

```rails g controller home index```

<h4>NOTE:-</h4> It is recommended that you start the server using the following command — rails s and visit localhost:3000 in the browser. If you see the following page, it means that everything is set up properly till now.



<h3>STEP 4 — Create a User Model</h3>

• Now, let’s create a model of the user and various routes to login, logout and signup. Although all this sounds alot, devise makes it super easy. Just execute the following command on the terminal — ```rails g devise User```

• Since the above command creates a model class and a schema of the table for the User, we must load the table in our database. To do this, we will execute the following command — ```rails db:migrate```
    
• To know the routes that the previous command created, execute the following command on the terminal — ```rails routes | grep user``` . You will see various routes like ```sign_in```, ```sign_out```, ```sign_up``` etc. were created.

• Now again run the server using ```rails s``` and visit ```localhost:3000``` . You will see the same index page. If you visit ```localhost:3000/users/sign_up``` , you should see the following page. If you fill the form, you will register yourself.
