class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    # add in later once I flesh out users
    # @user_names = User.get_user_names
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

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      flash[:notice] = "Item was updated!"
      redirect_to item_path(item)
    else
      flash[:alert] = "There was an error! Try again."
      render :edit
    end
  end

private

  def item_params
    params.require(:item).permit(:name, :item_type, :description, :owner, :damage)
  end

end
