class CreateFoodGroupFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :food_group_foods do |t|
      t.belongs_to :food_group, null: false, foreign_key: true
      t.belongs_to :food_ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
