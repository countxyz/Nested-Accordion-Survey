FactoryGirl.define do
  factory :question do
    association :survey
    content     'Am I a question?'
  end
end
