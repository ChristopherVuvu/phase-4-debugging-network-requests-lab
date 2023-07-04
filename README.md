# Putting it All Together: Client-Server Communication

## Learning Goals

- Understand how to communicate between client and server using fetch, and how
  the server will process the request based on the URL, HTTP verb, and request
  body
- Debug common problems that occur as part of the request-response cycle

## Introduction

Just like the last lesson, we've got code for a React frontend and Rails API
backend set up. This time though, it's up to you to use your debugging skills to
find and fix the errors!

To get the backend set up, run:

```console
$ bundle install
$ rails db:migrate db:seed
$ rails s
```

Then, in a new terminal, run the frontend:

```console
$ npm install --prefix client
$ npm start --prefix client
```

Confirm both applications are up and running by visiting
[`localhost:4000`](http://localhost:4000) and viewing the list of toys in your
React application.

## Deliverables

In this application, we have the following features:

- Display a list of all the toys
- Add a new toy when the toy form is submitted
- Update the number of likes for a toy
- Donate a toy to Goodwill (and delete it from our database)

The code is in place for all these features on our frontend, but there are some
problems with our API! We're able to display all the toys, but the other three
features are broken.

Use your debugging tools to find and fix these issues.

There are no tests for this lesson, so you'll need to do your debugging in the
browser and using the Rails server logs and `byebug`.

**Note**: You shouldn't need to modify any of the React code to get the
application working. You should only need to change the code for the Rails API.

As you work on debugging these issues, use the space in this README file to take
notes about your debugging process. Being a strong debugger is all about
developing a process, and it's helpful to document your steps as part of
developing your own process.

## Your Notes Here

- Add a new toy when the toy form is submitted

  - How I debugged: 
Add a new toy when the toy form is submitted:

Check the network request: Inspect the network request made when submitting the toy form in the browser's developer tools. Ensure that the request is being sent to the correct API endpoint (POST /toys) and that the request payload includes the necessary data for creating a new toy.

Check the Rails server logs: In the terminal where the Rails server is running, observe the server logs when submitting the toy form. Look for any error messages or exceptions related to the create action in the ToysController. Verify that the server receives the request and attempts to create a new toy.

Verify controller code: Examine the ToysController (app/controllers/toys_controller.rb) and ensure that the create action is defined correctly. Confirm that the strong parameters permit the required attributes for creating a toy (name, image, likes). Check if there are any missing or incorrect logic related to creating a new toy.


- Update the number of likes for a toy

  - How I debugged: Check the network request: Inspect the network request made when updating the number of likes for a toy. Verify that the request is being sent to the correct API endpoint (PATCH /toys/:id) and that the request payload includes the updated likes value.

Check the Rails server logs: Observe the server logs when updating the likes for a toy. Look for any error messages or exceptions related to the update action in the ToysController. Ensure that the server receives the request and attempts to update the likes value for the specified toy.

Verify controller code: Examine the ToysController and specifically the update action. Confirm that the action is defined correctly and includes the necessary logic for updating the likes value. Check if there are any issues with the strong parameters, finding the toy by ID, or updating the likes attribute


- Donate a toy to Goodwill (and delete it from our database)

  - How I debugged: Check the network request: Inspect the network request made when donating a toy to Goodwill. Verify that the request is being sent to the correct API endpoint (DELETE /toys/:id) with the ID of the toy to be deleted.

Check the Rails server logs: Observe the server logs when deleting a toy. Look for any error messages or exceptions related to the destroy action in the ToysController. Ensure that the server receives the request and attempts to delete the specified toy from the database.

Verify controller code: Examine the ToysController and the destroy action. Confirm that the action is defined correctly and includes the necessary logic for finding and deleting the toy. Check if there are any issues with finding the toy by ID or deleting it from the database.
