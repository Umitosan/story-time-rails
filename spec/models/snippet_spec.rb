require 'rails_helper'

describe Snippet do
  it { should validate_presence_of :body }
  it { should validate_presence_of :image }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :story_id }

  it { should belong_to :user }
  it { should belong_to :story }
end
