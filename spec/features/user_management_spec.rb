require_relative '../web_helper'

feature 'User sign up' do
  scenario 'I can sign up a new user' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, test@example.com')
    expect(User.first.email).to eq('test@example.com')
  end

  scenario 'It requires a matching confirmation password' do
    expect { sign_up(password_confirmation: 'Wrong') }.not_to change(User, :count)
    expect(current_path).to eq('/users')
    expect(page).to have_content 'Password and confirmation password do not match.'
  end

  scenario "I can't sign up without and email adress" do
    expect { sign_up(email: nil) }.not_to change(User, :count)
  end
end
