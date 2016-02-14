def sign_up(email: 'test@example.com',
            password: '123456',
            password_confirmation: '123456')
  visit '/users/new'
  fill_in :email, with: email
  fill_in :password, with: password
  fill_in :password_confirmation, with: password_confirmation
  click_button 'Sign up'
end
