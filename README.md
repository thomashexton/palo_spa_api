## PALO IT Technical Test — Backend API Server — [Link to App](https://thomashexton.github.io/palo_spa_client)

This Ruby on Rails API server receives the POST request from the client, stores the first name and last name in a database. Then calculates the sum of the ASCII values for each character by calling a method in the User model. Then passes that into a second method to calculate the largest number of consecutive 0s in a binary representation of that value and finally delivers that number, along with the confirmation of receipt, to the SPA for display.

---

### Install guide to run locally.

1. Download or clone this repo.
1. Using your Terminal, navigate into the directory.
1. Run the command `bundle install` to install the dependencies.
1. Run these commands to setup the PostgreSQL database.
	* `rails db:create`
	* `rails db:migrate`
	* `rails db:seed`
1. Run the dev server with `rails server`. To ensure it's all good, go to https://localhost:3000 and you should see a JSON object with 3 users. _Recommended browser is either Chrome or Brave._
1. Install my corresponding React frontend following the instructions found in this [repo](https://github.com/thomashexton/palo_spa_client).

---

### Frontend Client GitHub — https://github.com/thomashexton/palo_spa_client
