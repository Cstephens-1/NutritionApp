class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :food_ingredient
end
