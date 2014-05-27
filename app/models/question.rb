class Question < ActiveRecord::Base
  belongs_to :survey, inverse_of: :questions

  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, allow_destroy: true

  validates :content, length: { in: 2..100 }, allow_blank: true
end
