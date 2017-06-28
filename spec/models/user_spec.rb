require 'rails_helper'

describe User do
  it { should validate_presence_of :name }

  it { should have_many :stories }
  it { should have_many :snippets }
end
