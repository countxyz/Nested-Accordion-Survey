require 'spec_helper'

feature 'Poll management' do
  scenario 'creates a new poll', js: true do
    visit root_path
    click_button('Create Poll')

    fill_form(:poll, { name: 'Awesome Poll' })
    click_button('Submit')
    expect(page).to have_content 'Awesome Poll'
  end
end
