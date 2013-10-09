class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def create
    @topic = Topic.new(params[:topic])

    if @topic.save
      redirect_to @topic
    else
      render 'new'
    end
  end

  def new
    @topic = Topic.new
  end

end