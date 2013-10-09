class Post < ActiveRecord::Base
  attr_accessible :title, :author, :body, :topic_id
  belongs_to :topic
end