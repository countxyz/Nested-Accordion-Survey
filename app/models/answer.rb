class Answer < ActiveRecord::Base
  belongs_to :question

  validates_length_of :content,  maximum: 100
end
