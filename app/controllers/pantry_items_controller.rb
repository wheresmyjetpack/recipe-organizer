class PantryItemsController < ApplicationController
  def new
    @pantry_item = PantryItem.new
  end

  def create
    render plain: params[:pantry_item].inspect
  end
end
