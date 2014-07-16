require 'rails_helper'

describe Answer do

  describe 'associations' do
    it { should belong_to(:question) }
  end

  describe 'field lengths' do
    it { should ensure_length_of(:content).is_at_most(100) }
  end
end
