class ShoppingListIngredients < ActiveRecord::Migration
  def change
    create_table :shopping_list_ingredients, id: false do |t|
      t.belongs_to :shopping_list
      t.belongs_to :ingredient
    end
  end
end
