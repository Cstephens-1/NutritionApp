class MealPlanSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :calories, :carbs, :protein, :fat
  has_one :user
end
