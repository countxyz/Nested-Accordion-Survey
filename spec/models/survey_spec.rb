require 'rails_helper'

RSpec.describe Survey do

  describe 'associations' do
    it { should have_many(:questions).dependent(:destroy)                    }
    it { should accept_nested_attributes_for(:questions).allow_destroy(true) }
  end

  describe 'presence' do
    it { should validate_presence_of(:name) }
  end

  describe 'uniqueness' do
    it { should validate_uniqueness_of(:name) }
  end

  describe 'field lengths' do
    it { should validate_length_of(:name).is_at_most(100) }
  end
end
