class User < ActiveRecord::Base
  has_many :stories
  has_many :snippets

  validates :name, :presence => true
end
