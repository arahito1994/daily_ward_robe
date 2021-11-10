class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
  end

  def new
    @item=Item.new
  end

  def create
  end

  private
  
  def item_params
    params.require(:item).permit(:image, :title, :style_text, :outer_item, :tops_item, :bottoms_item, :shoes_item, :goods_item).merge(user_id: current_user.id)
  end


end
