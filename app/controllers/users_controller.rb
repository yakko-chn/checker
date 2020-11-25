class UsersController < ApplicationController
  def search
    @user = User.search(params[:nickname])
    @item = Item.order('created_at ASC').where(user_id: @user.ids)
  end
end
