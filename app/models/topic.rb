class Topic < ActiveRecord::Base
has_many :posts
attr_accessible :title, :author, :body
end