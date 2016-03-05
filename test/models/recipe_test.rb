require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "should not save recipe without name" do
    recipe = Recipe.new

    assert_not recipe.save
  end

  test "should not save recipe without directions" do
    recipe = Recipe.new(name: 'Test')

    assert_not recipe.save
  end
end
