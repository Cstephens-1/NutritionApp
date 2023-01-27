class GoalSerializer < ActiveModel::Serializer
  attributes :id, :goal_weight, :goal_body_fat, :goal_muscle_mass, :goal_date
  has_one :user
end
