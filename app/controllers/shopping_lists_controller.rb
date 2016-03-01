class ShoppingListsController < ApplicationController
  def index
    @shopping_lists = ShoppingList.all
  end

  def show
    @shopping_list = ShoppingList.find(params[:id])
  end

  def new
    @shopping_list = ShoppingList.new
  end

  def create
    @shopping_list = ShoppingList.new(shopping_list_params)
  end

  private
  def shopping_list_params
    params.require(:shopping_list).permit(:ingredient, :amount)
  end
end
