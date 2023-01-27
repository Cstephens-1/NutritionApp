class CreateFoodIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :food_ingredients do |t|
      t.string :name
      t.integer :amount
      t.string :unit
      t.integer :carbs
      t.integer :calories
      t.integer :protein
      t.integer :fat

      t.timestamps
    end
  end
end
