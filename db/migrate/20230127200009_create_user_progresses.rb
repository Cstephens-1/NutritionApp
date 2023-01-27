class CreateUserProgresses < ActiveRecord::Migration[7.0]
  def change
    create_table :user_progresses do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.datetime :date
      t.float :weight
      t.integer :body_fat
      t.integer :muscle_mass
      t.integer :calorie_intake
      t.integer :calorie_burn

      t.timestamps
    end
  end
end
