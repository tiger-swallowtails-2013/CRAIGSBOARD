class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def show
    # @topic = Topic.find(params[0])
    puts params
  end

  def create

  end

end