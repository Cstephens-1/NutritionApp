class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :instructions
      t.integer :serving_size
      t.integer :calories
      t.integer :protein
      t.integer :carbs
      t.integer :fat

      t.timestamps
    end
  end
end
