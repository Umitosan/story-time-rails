class Story < ActiveRecord::Base
  belongs_to :user
  has_many :snippets

  validates :title, :presence => true
end
