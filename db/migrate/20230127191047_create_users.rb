class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :age
      t.string :gender
      t.float :height
      t.float :weight

      t.timestamps
    end
  end
end
