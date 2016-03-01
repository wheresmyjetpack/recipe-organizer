class CreateShoppingListIngredients < ActiveRecord::Migration
  def change
    create_table :shopping_list_ingredients do |t|

      t.timestamps null: false
    end
  end
end
