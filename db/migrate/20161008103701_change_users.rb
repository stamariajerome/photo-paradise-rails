class ChangeUsers < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.remove :full_name
      t.remove :last_name
    end
  end
end
