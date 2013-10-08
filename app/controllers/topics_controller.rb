class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])

  end

  def create
    @topic = Topic.new(params[:topic])

    @post = Post.new(params[:post])
    @post[:topic_id] =

    if @topic.save
      redirect_to @topic
    else
      render 'new'
    end
  end

  def new
  end

end