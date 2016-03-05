require 'active_support/concern'

module IngredientsExtension
  extend ActiveSupport::Concern
  included do
    private
    def find_or_create_ingredients
      t = []
      self.ingredients.each { |i| t << Ingredient.find_or_create_by(name: i.name) }
      self.ingredients.replace(t)
    end
  end
end

ShoppingList.send(:include, IngredientsExtension)
