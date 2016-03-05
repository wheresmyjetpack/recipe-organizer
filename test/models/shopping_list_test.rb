require 'test_helper'

class ShoppingListTest < ActiveSupport::TestCase
  test "ingredients with name of existing ingredient should not save" do
    # setup
    ingredient1 = Ingredient.new(name: 'Milk')
    ingredient1.save
    
    assert_no_difference 'Ingredient.count', 'Ingredient should not save' do
      shopping_list = ShoppingList.new

      shopping_list.ingredients.build(name: 'Milk')
      shopping_list.save
    end  
  end
end
