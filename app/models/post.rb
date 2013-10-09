class Post < ActiveRecord::Base
  attr_accessible :title, :author, :body, :topic_id
  validates :title, :body, presence: true
  belongs_to :topic
end