require 'test_helper'

class ShoppingListTest < ActiveSupport::TestCase
  test "ingredients with duplicate names should not save" do
    # setup
    ingredient1 = Ingredient.create(name: 'Milk')
    
    assert_no_difference 'Ingredient.count', 'Ingredient should not save' do
      shopping_list = ShoppingList.new

      shopping_list.ingredients.build(name: 'Milk')
      shopping_list.save
    end  
  end
end
