class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :show, :edit, :create, :update, :lists]
  before_action :set_item, only: [:edit, :update]
  before_action :move_to_top_page, only: :edit

  def index
    @items = Item.all.order('created_at ASC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      flash[:notice] = "#{@item.food.name}を冷蔵庫に入れました"
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
    redirect_to root_path if item.destroy
  end

  def concept
    render 'layouts/concept'
  end

  def search
    render 'users/search'
  end

  def lists
    render 'items/lists'
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
    redirect_to root_path unless current_user.id == @item.user_id
  end
end
