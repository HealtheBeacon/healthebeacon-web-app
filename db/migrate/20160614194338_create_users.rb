class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :cernerid
      t.string :first_name
      t.string :last_name
      t.integer :teamid
      t.integer :score

      t.timestamps null: false
    end
  end
end
