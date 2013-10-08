class Post < ActiveRecord::Base
  belongs_to :topic
attr_accessible :title, :author, :body
end