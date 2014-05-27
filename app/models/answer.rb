class Answer < ActiveRecord::Base
  belongs_to :question

  validates :content,  length: { in: 2..100 }, allow_blank: true
end
