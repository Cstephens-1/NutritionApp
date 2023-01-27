class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.string :activity_level

      t.timestamps
    end
  end
end
