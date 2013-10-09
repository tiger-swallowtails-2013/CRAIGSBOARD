class Post < ActiveRecord::Base
  belongs_to :topic
  attr_accessible :title, :author, :body, :topic_id
  validates :title, :body, presence: true
end