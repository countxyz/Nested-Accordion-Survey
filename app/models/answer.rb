class Answer < ActiveRecord::Base
  belongs_to :question, inverse_of: :answer, dependent: :destroy

  validates :question, presence: true
  validates :content,  presence: true, length: { in: 2..100 }
end
