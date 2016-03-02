class ShoppingListsController < ApplicationController
  def index
    @shopping_lists = ShoppingList.all
  end

  def show
    @shopping_list = ShoppingList.find(params[:id])
  end

  def new
    @shopping_list = ShoppingList.new
    @shopping_list_ingredients = @shopping_list.shopping_list_ingredients.build
    @ingredient = @shopping_list_ingredients.build_ingredient
  end

  def create
    @shopping_list = ShoppingList.new(shopping_list_params)
  end

  private
  def shopping_list_params
    params.require(:shopping_list).permit(:id, shopping_list_ingredients_attributes: [:id, ingredient: [:id, :name, :amount]])
  end
end
