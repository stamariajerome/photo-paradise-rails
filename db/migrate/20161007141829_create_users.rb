class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :last_name
      t.string :gender
      t.integer :age
      t.boolean :admin, default: false
    end
  end
end
