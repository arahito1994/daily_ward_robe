class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
  end

  def new
  end

  def create
  end

  private
  
  def item_params
    #params.require(:item), permit(:image)
  end


end
