# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
features = [
  { name: 'Dog friendly'},
  { name: 'Outdoor seating' },
  { name: 'Smoking area' },
  { name: 'Live music' },
  { name: 'Wifi' },
  { name: 'Takeaway available' }
]

meals = [
  { name: 'Breakfast'},
  { name: 'Lunch'},
  { name: 'Dinner'},
  { name: 'Snacks'}
]

features.each do |feature|
  Feature.create(feature)
end

meals.each do |meal|
  Meal.create(meal)
end

cafe1 = Restaurant.create(name: 'Happy Dog Cafe', info: 'We love dogs! We give your dog a treat every time you visit.', location: '44 Brown Street, Newtown, NSW, 2042')

cafe1.meals << Meal.find(1)
cafe1.meals << Meal.find(2)
cafe1.features << Feature.find(1)
cafe1.features << Feature.find(3)
cafe1.features << Feature.find(5)

cafe2 = Restaurant.create(name: 'Speedy Cafe', info: 'We have fast internet and yummy food. Unlimited wifi is availble to all customers. And we sing as we work so there is live music.', location: '17 Dick St, Chippendale, NSW, 2008')

cafe2.meals << Meal.find(2)
cafe2.meals << Meal.find(3)
cafe2.features << Feature.find(2)
cafe2.features << Feature.find(3)
cafe2.features << Feature.find(4)
