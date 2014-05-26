FactoryGirl.define do
  factory :survey do
    name 'Surveys are Awesome'

    after(:build) do |survey|
      FactoryGirl.create(:question, survey: survey)
    end
  end
end
