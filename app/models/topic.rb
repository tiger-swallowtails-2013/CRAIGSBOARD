class Topic < ActiveRecord::Base
  attr_accessible :title, :author, :body

  has_many :posts
  validates :title, presence: true
end