class FoodGroupFood < ApplicationRecord
  belongs_to :food_group
  belongs_to :food_ingredient
end
