class Snippet < ActiveRecord::Base

  belongs_to :story

  validates :body, :presence => true
  validates :image, :presence => true
  
end
