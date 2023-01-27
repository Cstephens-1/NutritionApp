class UserProgressSerializer < ActiveModel::Serializer
  attributes :id, :date, :weight, :body_fat, :muscle_mass, :calorie_intake, :calorie_burn
  has_one :user
end
