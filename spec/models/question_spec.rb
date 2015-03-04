require 'rails_helper'

RSpec.describe Question do

  describe 'associations' do
    it { should belong_to(:survey)                                         }
    it { should have_many(:answers).dependent(:destroy)                    }
    it { should accept_nested_attributes_for(:answers).allow_destroy(true) }
  end

  describe 'field lengths' do
    it { should validate_length_of(:content).is_at_most(100) }
  end
end
