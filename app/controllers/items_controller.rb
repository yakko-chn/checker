class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create]

  def index
    # @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path, notice: '登録が完了しました'
    else
      render :new
    end
  end

  def show
    @items = Item.all
    @item = Item.find(params[:id])
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
end
