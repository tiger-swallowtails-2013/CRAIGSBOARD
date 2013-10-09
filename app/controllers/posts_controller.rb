class PostsController < ApplicationController

  def index
    @topic = Topic.find(params[:topic_id])
    @posts = @topic.posts
  end


  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

end