class ListsController < ApplicationController
  before_action :set_user
  before_action :list_params

  def index
    @lists = List.all.order('created_at ASC')
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @list = List.find(params[:id])
  end

  def update
    if @list.update(list_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    list = List.find(params[:id])
  end


private
  def list_params
    params.require(:list).permit(:date, :buy_list).merge(user_id: current_user.id)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
