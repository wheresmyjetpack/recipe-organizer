class AddPrimaryKeyToShoppingListIngredient < ActiveRecord::Migration
  def change
    add_column :shopping_list_ingredients, :id, :primary_key
  end
end
