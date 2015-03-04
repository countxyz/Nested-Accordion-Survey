require 'rails_helper'

RSpec.feature 'Survey management' do
  scenario 'delete a survey', js: true do
    survey = create(:survey)
    visit root_path
    
    click_button 'Delete'
    confirm_dialog

    expect(page).to_not have_content 'Surveys are Awesome'
  end
end
