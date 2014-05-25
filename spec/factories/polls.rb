FactoryGirl.define do
  factory :poll do
    name 'Polls are Awesome'

    after(:build) do |poll|
      FactoryGirl.create(:question, poll: poll)
    end
  end
end
