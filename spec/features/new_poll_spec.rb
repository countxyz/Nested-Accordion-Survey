require 'spec_helper'

feature 'Poll management' do
  scenario 'creates a new poll', js: true do
    visit root_path
    click_button('Create Poll')

    fill_form(:poll, attributes_for(:poll))
    click_button('Submit')
    expect(page).to have_content 'Polls are Awesome'
  end
end
