class PantryItem < ActiveRecord::Base
  belongs_to :ingredient

  accepts_nested_attributes_for :ingredient
end
