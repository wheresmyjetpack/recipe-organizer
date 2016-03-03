require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  test "should not save ingredient without name" do
    ingredient = Ingredient.new
    assert_not ingredient.save
  end
end
