require 'spec_helper'

describe Survey do

  describe 'associations' do
    it { should have_many(:questions)                    }
    it { should accept_nested_attributes_for(:questions) }
  end

  describe 'presence' do
    it { should validate_presence_of(:name) }
  end

  describe 'uniqueness' do
    it { should validate_uniqueness_of(:name) }
  end

  describe 'field lengths' do
    it { should ensure_length_of(:name).is_at_least(2).is_at_most(100) }
  end
end
