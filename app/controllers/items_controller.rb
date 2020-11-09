class ItemsController < ApplicationController
  def index
  end

  def new
  end

  def create
    
  end

  def concept
    render "layouts/concept"
  end

  def search
    render "layouts/search_user"
  end

  private

  # def item_params
  #   params.require(:item).permit(:name, :text, :category_id, :item_status_id, :delivery_charge_id, :prefecture_id, :shopping_day_id, :price, :image).merge(user_id: current_user.id)
  # end
end
