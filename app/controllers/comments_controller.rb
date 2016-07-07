class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to post_url(@comment.post_id), notice: 'コメントを登録しました。'
    else
      redirect_to post_url(@comment.post_id)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end
end
