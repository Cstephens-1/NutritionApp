class FoodIngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :unit, :carbs, :calories, :protein, :fat
end
