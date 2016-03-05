class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :ingredients, :through => :recipe_ingredients

  accepts_nested_attributes_for :recipe_ingredients
  accepts_nested_attributes_for :ingredients

  validates :name, presence: true
  validates :directions, presence: true

  before_save :find_or_create_ingredients
end
