require 'spec_helper'

feature 'Survey management' do
  scenario 'creates a new survey', js: true do
    visit root_path
    click_button 'New Survey' 

    fill_in 'Name', with: 'Survey Me'
    fill_in 'Question', with: 'Question Here'
    click_button 'Create Survey'
    expect(page).to have_content 'Survey Me'
  end
end
