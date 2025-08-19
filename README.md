# Rails Basic Forms Lab

<img src="https://s3.amazonaws.com/learn-verified/puppies.gif" hspace="10" align="right" width="300">

Your local pet adoption store has asked you to build their new website. First
and foremost, the store needs a form for their staff to add puppies that are
available for adoption. Good thing you love puppies _and_ coding!

## Objectives

1. Implement a POST request to the controller to display data from a user in
   the view
2. Implement both POST and GET requests
3. Connect a controller action with both a view and a model
4. Practice using Rails form helpers and routing

## Instructions

The focus of this lab is to build a way for a user to go to a homepage,
follow a link to a form where they can enter a puppy's information, and, upon
submission, view the puppy's information.

1. Run `bundle install`
2. Run `bin/rails server`

3. **Build out a puppy class** in `app/models/puppy.rb`. Puppies should have name,
   breed, and age attributes. You will need to be able to pass these three
   attributes to initialization, as well as readers and writers for the attributes.

4. **Set up your routes** in `config/routes.rb`:

   - Create a route that responds to a GET request at `/` that goes to `puppies#index`
   - Create a route that responds to a GET request at `/new` that goes to `puppies#new`
   - Create a route that responds to a POST request at `/puppy` that goes to `puppies#create`

5. **Create controller actions** in `app/controllers/puppies_controller.rb`:

   - Add an `index` action to display the homepage
   - Add a `new` action to display the form
   - Add a `create` action to process the form submission and pass data to the view

6. **Build the homepage** in `app/views/puppies/index.html.erb`. This page should
   welcome you to the Puppy Adoption Site and include a link to the new puppy form.
   Use Rails `link_to` helper to create a link with the text "Click Here To List A Puppy"
   that goes to `/new`.

7. **Create the form** in `app/views/puppies/new.html.erb`. You can create this form
   using Rails form helpers. Remember, you'll need to set up the form to submit to the
   correct route. Use Rails `form_with` helper to create your form. The form should
   submit to `/puppy` using POST method and have fields for name, breed, and age.
   Remember: the "submit" button should be an `<input>` element with a `type` of
   `"submit"` and text content of "submit".

8. **Display the results** in `app/views/puppies/create.html.erb`. Make sure the form
   is being submitted properly. This view should display the info for the puppy that
   was just created. Display the puppy information with labels like:
   - Puppy Name: [name]
   - Puppy Breed: [breed]
   - Puppy Age: [age]

## Testing

Run `bundle exec rspec` to test your implementation. Make sure all tests pass!

The tests will check that:

- Your routes are set up correctly
- Your form has all the required fields
- Your form submits to the correct endpoint
- Your results page displays all the submitted data correctly
- Your Puppy class works as expected

## Resources

- [Rails Forms Guide](https://guides.rubyonrails.org/form_helpers.html)
- [Rails Routing Guide](https://guides.rubyonrails.org/routing.html)
- [Rails Controller Guide](https://guides.rubyonrails.org/action_controller_overview.html)
