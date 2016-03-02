class ShoppingListIngredient < ActiveRecord::Base
  belongs_to :shopping_list
  belongs_to :ingredient
end
