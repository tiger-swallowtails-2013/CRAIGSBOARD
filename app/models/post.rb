class Post < ActiveRecord::Base
  attr_accessible :title, :author, :body
  belongs_to :topic
end