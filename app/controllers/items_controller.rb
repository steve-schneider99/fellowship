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

private

  def item_params
    params.require(:item).permit(:name, :item_type, :description, :owner, :damage)
  end

end
