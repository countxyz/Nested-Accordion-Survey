require 'spec_helper'

feature 'Survey management' do
  scenario 'update a new survey', js: true do
    survey = create(:survey)
    visit root_path
    click_button 'Edit'

    fill_in 'Question', with: 'Updated question'
    click_button 'Update Survey'
    expect(page).to have_content 'Updated question'
  end
end
