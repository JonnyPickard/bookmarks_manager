require 'spec_helper'

feature 'Creating links' do
  scenario 'A new link is submitted to the database' do
    visit '/links/new'
    fill_in('title', :with => 'Test')
    fill_in('url', :with => 'http://testlink.com')
    click_button('submit')
    visit '/links'
    within 'ul#links' do
      expect(page).to have_content('Test')
    end
  end
end
