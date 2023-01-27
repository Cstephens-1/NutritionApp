# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

run = Activity.create(name: "run", activity_level: "light", description: "running 10 min")

shellfish = Allergy.create(name:"shellfish")

protein = FoodGroup.create(name: "protein")


# pancakes = FoodItem.create(name:"Pancakes", calories: 200, carbs: 200, fat:30, protein: 3)
# bread = FoodItem.create(name: "loaf of bread", calories: 80, carbs: 12, fat: 1, protein: 0)

milk = FoodIngredient.create(name: "milk", amount: 1, unit:"oz", carbs: 2, calories: 20, protein: 5, fat: 8)
flour = FoodIngredient.create(name: "flour", amount: 1, unit: "cup", carbs: 10, calories: 40, protein: 1, fat: 0)


pancakes_with_eggs = Recipe.create(name: "Pancakes with eggs", instructions: "step 1:... step2:...", serving_size: 4, calories: 800, carbs: 250, protein: 80, fat: 10) 

cory = User.create(username: "Cory", password_digest: "***", age: 36, gender:"M", height: 72, weight: 175)

lose_10_pounds = Goal.create(user_id: cory.id, goal_weight: 165, goal_body_fat: 10, goal_muscle_mass: 60)

day1 = UserProgress.create(user_id: cory.id, weight: 175, body_fat: 25, muscle_mass: 40, date: "1/27/23")

lunch_smoothie = MealPlan.create(user_id: cory.id, name: "lunch", date: "1/27/23", calories: 400, carbs: 5, protein: 10, fat: 2)

pancake_flour = RecipeIngredient.create(recipe_id: pancakes_with_eggs.id, food_ingredient_id: flour.id)

protein_flour = FoodGroupFood.create(food_group_id: protein.id, food_ingredient_id: flour.id)

cory_shellfish = UserAllergy.create(user_id:cory.id, allergy_id: shellfish.id)