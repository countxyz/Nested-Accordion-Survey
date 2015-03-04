require 'rails_helper'

RSpec.feature 'Survey management' do
  scenario 'update a new survey', js: true do
    survey = create(:survey)
    visit root_path
    click_button 'Edit'

    fill_in 'Name', with: 'Survey Me Again'
    click_button 'Update Survey'

    expect(page).to_not have_content 'Suvey Me'
  end
end
