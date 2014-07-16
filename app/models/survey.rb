class Survey < ActiveRecord::Base
  extend FriendlyId

  has_many :questions, inverse_of: :survey, dependent: :destroy

  accepts_nested_attributes_for :questions, allow_destroy: true
  
  friendly_id :name, use: [:slugged, :finders]

  validates_presence_of :name

  validates_uniqueness_of :name

  validates_length_of :name, maximum: 100
end
