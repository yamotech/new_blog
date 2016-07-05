class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
    @new_posts = Post.find_newest_article
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: '投稿に成功しました。'
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post, notice: '更新に成功しました'
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :category, :body)
  end
end
