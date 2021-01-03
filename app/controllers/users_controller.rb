class UsersController < ApplicationController
  def search
    @user = User.search(params[:nickname])
    @item = Item.order('created_at ASC').where(user_id: @user.ids)
  end

  def new_guest
    user = User.find_or_create_by!(email: 'guest@example.com') do |u|
      u.nickname = 'Guest'
      u.password = SecureRandom.urlsafe_base64
      u.password_confirmation = u.password
    end
    sign_in user
    redirect_to root_path
  end
end
