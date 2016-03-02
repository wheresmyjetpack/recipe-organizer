class CreateJoinTableShoppingListIngredients < ActiveRecord::Migration
  def change
    create_join_table :shopping_lists, :ingredients do |t|
      # t.index [:shopping_list_id, :ingredient_id]
      # t.index [:ingredient_id, :shopping_list_id]
    end
  end
end
