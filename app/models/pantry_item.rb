class PantryItem < ActiveRecord::Base
  validates :name, presence: true 
end
