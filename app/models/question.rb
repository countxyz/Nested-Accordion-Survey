class Question < ActiveRecord::Base
  belongs_to :survey, inverse_of: :questions, dependent: :destroy

  has_many :answers
  accepts_nested_attributes_for :answers

  validates :survey,  presence: true
  validates :content, presence: true, length: { in: 2..100 }
end
