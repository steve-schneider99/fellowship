class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    item =  Item.new(item_params)
    if item.save
      flash[:notice] = "Item was created!"
      redirect_to items_path
    else
      flash[:alert] = "Error while submitting."
      render :new
    end
  end

private

  def item_params
    params.require(:item).permit(:name)
  end

end
