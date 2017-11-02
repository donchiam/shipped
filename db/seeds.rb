# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
{ email: "dave@dave.com", password: "password"},
{ email: "adam@adam.com", password: "password"},
{ email: "joe@joe.com", password: "password"}
])


Job.create([

{ name: "janitor",
  description: "You are responsible for cleaning the boat at night.  Don't forget the bathrooms",
  containers: 1000,
  origin: "Florida",
  destination: "Spain",
  cost: 5000,
  user_id: 1,
  assignment_id: 1
},

{ name: "engineer",
  description: "You are responsible for equipment maintence.  Daily up keep of engine and parts",
  containers: 5000,
  origin: "New York",
  destination: "Ireland",
  cost: 4000,
  user_id: 2,
  assignment_id: 2
	}

])

Boat.create([
{
	name: "Thedon",
	location: "Florida",
	containers: 5000,
	user_id: 1,
	assignment_id: 1
	
},

{   name: "Thekev",
	location: "New York",
	containers: 6000,
	user_id: 2,
	assignment_id: 2
		}

])

Assignment.create([
{
	job_id: 1,
	boat_id: 1
},

{
	job_id: 2,
	boat_id: 2
}

])