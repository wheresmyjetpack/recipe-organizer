class ShoppingList < ActiveRecord::Base
  has_many :shopping_list_ingredients
  has_many :ingredients, :through => :shopping_list_ingredients
    
  accepts_nested_attributes_for :shopping_list_ingredients, allow_destroy: :true
  accepts_nested_attributes_for :ingredients

  #before_save :find_or_create_ingredients

end
