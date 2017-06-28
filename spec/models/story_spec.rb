require 'rails_helper'

describe Story do
  it { should validate_presence_of :title }
  it { should validate_presence_of :user_id }

  it { should belong_to :user }
  it { should have_many :snippets }
end
