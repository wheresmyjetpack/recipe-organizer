require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  def setup
    @ingredient = Ingredient.new(name: "Milk")
  end

  test "should not save ingredient without name" do
    @ingredient.name = "            "
    assert_not @ingredient.valid?
  end

  test "ingredient name should not be too long" do
    @ingredient.name = "a" * 81
    assert_not @ingredient.valid?
  end

  test "ingredient name should be unique" do
    duplicate_ingredient = @ingredient.dup
    @ingredient.save
    assert_not duplicate_ingredient.valid?
  end
end
