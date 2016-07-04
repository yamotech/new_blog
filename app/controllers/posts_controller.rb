class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
    @new_posts = Post.find_newest_article
  end

  def new
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
