class User < ApplicationRecord
    has_secure_password
    has_many :goals
    has_many :user_progresses
    has_many :meal_plans

    has_many :user_allergies
    has_many :allergies, through: :user_allergies
end
