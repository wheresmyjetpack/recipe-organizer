class ShoppingList < ActiveRecord::Base
  has_many :shopping_list_ingredients
  has_many :ingredients, :through => :shopping_list_ingredients
    
  accepts_nested_attributes_for :shopping_list_ingredients, allow_destroy: :true
  accepts_nested_attributes_for :ingredients

  # TODO Need check for duplicate ingredients in single shopping list

end
