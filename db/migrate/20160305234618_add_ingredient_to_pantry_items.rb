class AddIngredientToPantryItems < ActiveRecord::Migration
  def change
    add_reference :pantry_items, :ingredient, index: true, foreign_key: true
  end
end
