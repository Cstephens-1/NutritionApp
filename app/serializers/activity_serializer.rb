class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :activity_level
end
