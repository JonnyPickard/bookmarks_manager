require_relative '../web_helper'

feature 'User sign up' do
  scenario 'I can sign up a new user' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome fake_email@email.com')
    expect(User.first.email).to eq('fake_email@email.com')
  end
end
