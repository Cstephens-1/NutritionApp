class FoodGroupFoodSerializer < ActiveModel::Serializer
  attributes :id
  has_one :food_group
  has_one :food_ingredient
end
