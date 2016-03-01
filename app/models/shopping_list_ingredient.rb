class ShoppingListIngredient < ActiveRecord::Base
  belongs_to :shopping_list
  belongs_to :ingredient

  validates_presence_of :shopping_list
  validates_presence_of :ingredient
end
