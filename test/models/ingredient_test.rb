require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  def setup
    @ingredient = Ingredient.new(name: "Milk")
  end

  test "should not save ingredient without name" do
    @ingredient.name = "            "
    assert_not @ingredient.valid?
  end
end
