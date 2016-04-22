class PantryItemsController < ApplicationController
  def index
    @pantry_items = PantryItem.all
  end

  def show
    @pantry_item = PantryItem.find(params[:id])
  end

  def new
    @pantry_item = PantryItem.new
  end

  def create
    @pantry_item = PantryItem.new(pantry_item_params.except(:ingredient))
    # TODO Write test for unique ingredient names
    @pantry_item.ingredient = Ingredient.find_or_create_by(name: pantry_item_params[:ingredient][:name])

    if @pantry_item.save
      redirect_to @pantry_item
    else
      render 'new'
    end
  end

  private
  def pantry_item_params
    params.require(:pantry_item).permit(:id, :amount, ingredient: [:id, :name])
  end
end
