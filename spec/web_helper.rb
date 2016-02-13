def sign_up
  visit '/users/new'
  expect(page.status_code).to eq(200)

end
