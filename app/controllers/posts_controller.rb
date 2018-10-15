class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new

  end

  def create
    #byebug
    Post.create(title: params[:post][:title], description: params[:post][:description])
    #Post.create(params)
    redirect_to posts_path
  end

end
