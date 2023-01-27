class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.float :goal_weight
      t.float :goal_body_fat
      t.float :goal_muscle_mass
      t.datetime :goal_date

      t.timestamps
    end
  end
end
