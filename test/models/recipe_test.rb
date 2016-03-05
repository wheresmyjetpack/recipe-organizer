require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test 'should not save recipe without name' do
    recipe = Recipe.new

    assert_not recipe.save
  end

  test 'should not save recipe without directions' do
    recipe = Recipe.new(name: 'Test')

    assert_not recipe.save
  end

  test "ingredients with name of existing ingredient should not save" do
    # setup
    ingredient1 = Ingredient.create(name: 'Milk')
    
    assert_no_difference 'Ingredient.count', 'Ingredient should not save' do
      recipe = Recipe.new

      recipe.ingredients.build(name: 'Milk')
      recipe.save
    end  
  end
end
