class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update]
  before_action :set_item, only: [:edit, :update]
  before_action :move_to_top_page, only: :edit

  def index
    @items = Item.all
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

    @comments = @item.comments
    @comment = current_user.comments.new 
  end

  def update
    if @item.update(item_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    item = Item.find(params[:id])
   if item.destroy
    redirect_to root_path
   end
  end

  def concept
    render "layouts/concept"
  end

  def search
    render "layouts/search_user"
  end

  private
  def item_params
    params.require(:item).permit(:buy_day, :category_id, :food_id, :size_id, :sell_by, :memo).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def move_to_top_page
    @item = Item.find(params[:id])
    unless current_user.id == @item.user_id
      redirect_to  root_path
    end
  end
end
