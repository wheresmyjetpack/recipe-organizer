# TODO Consider building out a pantry model
class PantryItem < ActiveRecord::Base
  belongs_to :ingredient

  accepts_nested_attributes_for :ingredient
end
