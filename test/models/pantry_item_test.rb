require 'test_helper'

class PantryItemTest < ActiveSupport::TestCase

  def setup
    @pantry_item = PantryItem.new(amount: "1 gal")
  end

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
