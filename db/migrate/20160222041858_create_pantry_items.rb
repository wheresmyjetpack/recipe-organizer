class CreatePantryItems < ActiveRecord::Migration
  def change
    create_table :pantry_items do |t|
      t.string :name
      t.string :amount

      t.timestamps null: false
    end
  end
end
