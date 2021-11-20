class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @items = Item.includes(:user).order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
  end

  def update
  end

  

  private

  def item_params
    params.require(:item).permit(:title, :style_text, :outer_item, :tops_item, :bottoms_item, :shoes_item, :goods_item,
                                 images: []).merge(user_id: current_user.id)
  end
end
