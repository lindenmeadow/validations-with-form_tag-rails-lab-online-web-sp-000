class PostsController < ApplicationController

  def new
    @post = Post.find(params[:id])
  end

  def create
    if @post = Post.create(post_params)
      redirect_to post_path(@path)
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    @post.update(post_params)

    redirect_to post_path(@post)
  end



  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
