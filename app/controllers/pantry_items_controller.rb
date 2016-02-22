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
    @pantry_item = PantryItem.new(pantry_item_params)

    @pantry_item.save
    redirect_to @pantry_item
  end

  private
  def pantry_item_params
    params.require(:pantry_item).permit(:name, :amount)
  end
end
