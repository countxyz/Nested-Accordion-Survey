class Survey < ActiveRecord::Base
  extend FriendlyId

  has_many :questions, inverse_of: :survey, dependent: :destroy
  accepts_nested_attributes_for :questions, allow_destroy: true
  
  friendly_id :name, use: [:slugged, :finders]

  validates :name, presence: true, uniqueness: true, length: { in: 2..100 }
end
