class FoodIngredient < ApplicationRecord
    has_many :recipe_ingredients
    has_many :recipes, through: :recipe_ingredients

    has_many :food_group_foods
    has_many :food_groups, through: :food_group_foods
end
