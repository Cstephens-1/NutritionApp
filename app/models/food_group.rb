class FoodGroup < ApplicationRecord
    has_many :food_group_foods
    has_many :food_ingredients, through: :food_group_foods
end
