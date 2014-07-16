require 'rails_helper'

describe Question do

  describe 'associations' do
    it { should belong_to(:survey)                                         }
    it { should have_many(:answers).dependent(:destroy)                    }
    it { should accept_nested_attributes_for(:answers).allow_destroy(true) }
  end

  describe 'field lengths' do
    it { should ensure_length_of(:content).is_at_most(100) }
  end
end
