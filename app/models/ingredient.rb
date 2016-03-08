class Ingredient < ActiveRecord::Base
  has_many :shopping_list_ingredients
  has_many :shoping_lists, :through => :shopping_list_ingredients
  has_many :pantry_items

  accepts_nested_attributes_for :pantry_items

  validates :name, presence: true
end
