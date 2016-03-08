require 'test_helper'

class PantryItemsControllerTest < ActionController::TestCase
  test 'should not create ingredient if ingredient with name exists' do
    post :create, pantry_item: {'ingredient' => {'name' => 'Milk'}} 
    assert_no_difference('Ingredient.count') do
      post :create, pantry_item: {'ingredient' => {'name' => 'Milk'}} 
    end
  end

end
