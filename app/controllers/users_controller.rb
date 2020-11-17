class UsersController < ApplicationController

  def search
    # binding.pry
    @user = User.search(params[:nickname])  
    @item = Item.where(user_id: @user.ids)
  end

end
