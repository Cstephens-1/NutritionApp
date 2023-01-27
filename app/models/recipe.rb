class Recipe < ApplicationRecord
    has_many :recipe_ingredients
    has_many :food_ingredients, through: :recipe_ingredients
end
