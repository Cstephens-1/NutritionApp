class UserAllergySerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :allergy
end
