class Ingredient < ActiveRecord::Base
  has_many :shopping_list_ingredients
  has_many :shoping_lists, :through => :shopping_list_ingredients

  validates :name, presence: true
end
