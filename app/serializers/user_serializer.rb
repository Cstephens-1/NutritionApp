class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :age, :gender, :height, :weight
end
