class Poll < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  validates :name, presence: true, uniqueness: true, length: { in: 2..100 }
end
