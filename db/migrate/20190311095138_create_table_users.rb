class CreateTableUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :type, null: false
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
  end
end
