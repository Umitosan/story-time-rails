class Snippet < ActiveRecord::Base
  belongs_to :user
  belongs_to :story

  validates :body, :presence => true
  validates :image, :presence => true
  validates :user_id, :presence => true
  validates :story_id, :presence => true
end
