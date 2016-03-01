class CreateShoppingLists < ActiveRecord::Migration
  def change
    create_table :shopping_lists do |t|

      t.timestamps null: false
    end
  end
end
