class PostsController < ApplicationController

  def index
    @topic = Topic.find(params[:topic_id])
    @posts = @topic.posts
  end


  def create

    @post = Post.create(params[:post])
    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new

  end

  def posts
    @posts = Post.all
  end




end