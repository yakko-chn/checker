class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    # @comment.user_id = current_user.id

    redirect_to "/items/#{comment.item.id}"

    # if @comment.save
    #   redirect_to  "/items/#{comment.item.id}"
    #   else
    #   @prototype = @comment.prototype
    #   @comments = @prototype.comments
    #   render "items/show"
    # end
  end

  # def destroy
  #   comment = Comment.find(params[:id])

  #   if comment.destroy
  #   redirect_to root_path
  #  end
  # end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end
