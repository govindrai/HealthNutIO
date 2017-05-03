# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gov = User.create(name:"govind", age:24, weight_pounds:190, target_weight_pounds:175, height_inches:70, sex:"male", phone_number: "+19257779777")

dan = User.create(name: "Daniel Welsh", phone_number: "+17802636496", age: 20, weight_pounds: 170, target_weight_pounds: 180, sex: "male", height_inches: 74)

Meal.create(user: dan, food_name: "Chicken", calories: 123, quantity: 2, meal_type: "breakfast", original_description: "lala")

Meal.create(user: dan, food_name: "Celery", calories: 5, quantity: 5, meal_type: "breakfast", original_description: "lala")

Meal.create(user: dan, food_name: "Waffles", calories: 450, quantity: 2, meal_type: "breakfast", original_description: "lala")

Meal.create(user: dan, food_name: "Ice Cream", calories: 200, quantity: 1, meal_type: "breakfast", original_description: "lala")

Meal.create(user: dan, food_name: "Cereal", calories: 400, quantity: 1, meal_type: "lunch", original_description: "lala")

Meal.create(user: dan, food_name: "Sandwich", calories: 300, quantity: 1, meal_type: "lunch", original_description: "lala")

Meal.create(user: dan, food_name: "ham", calories: 150, quantity: 3, meal_type: "dinner", original_description: "lala")

Meal.create(user: dan, food_name: "Grilled Chicken Breast", calories: 300, quantity: 1, meal_type: "dinner", original_description: "lala")

Meal.create(user: dan, food_name: "Cake", calories: 300, quantity: 1, meal_type: "dinner", original_description: "lala")