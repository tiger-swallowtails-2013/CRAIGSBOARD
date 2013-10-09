class PostsController < ApplicationController

  def index
    @topic = Topic.find(params[:topic_id])
    @posts = @topic.posts
  end

  def create
    @post = Post.new(params[:post])
    p params[:topic_id]
    if @post.save
      @topic = Topic.find(params[:post][:topic_id])
      redirect_to @topic
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