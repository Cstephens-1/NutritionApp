class CreateMealPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :meal_plans do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.datetime :date
      t.integer :calories
      t.integer :carbs
      t.integer :protein
      t.integer :fat

      t.timestamps
    end
  end
end
