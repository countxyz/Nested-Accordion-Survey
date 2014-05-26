require 'spec_helper'

describe Answer do

  describe 'associations' do
    it { should belong_to(:question) }
  end

  describe 'presence' do
    it { should validate_presence_of(:content) }
  end

  describe 'field lengths' do
    it { should ensure_length_of(:content).is_at_least(2).is_at_most(100) }
  end
end
