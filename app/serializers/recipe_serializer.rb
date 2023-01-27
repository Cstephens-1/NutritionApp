class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :instructions, :serving_size, :calories, :protein, :carbs, :fat
end
