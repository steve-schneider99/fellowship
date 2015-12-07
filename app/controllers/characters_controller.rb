class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    character = Character.new(character_params)
    if character.save
      flash[:notice] = "Character successfully created!"
      redirect_to characters_path
    else
      flash[:alert] = "Error in submission!"
      render :new
    end
  end

  def character_params
    params.require(:character).permit(:name, :class1)
  end

end
