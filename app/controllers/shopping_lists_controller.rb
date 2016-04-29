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
    ingredients = []
    @shopping_list = ShoppingList.new(shopping_list_params)

    @shopping_list.ingredients.each do |i|
      ingredients << Ingredient.find_or_create_by(name: i.name)
    end

    @shopping_list.ingredients.replace(ingredients)

    if @shopping_list.save
      redirect_to @shopping_list
    else
      render 'new'
    end
  end

  private
  def shopping_list_params
    params.require(:shopping_list).permit(:id, ingredients_attributes: [:id, :name, :_destroy])
  end
end
