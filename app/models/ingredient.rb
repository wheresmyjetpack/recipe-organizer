class Ingredient < ActiveRecord::Base
  has_many :shopping_list_ingredients
end
