def sign_up
  visit('/users/sign_up')
  fill_in 'user_first_name', with: 'Flavia'
  fill_in 'user_last_name', with: 'Farraday'
  fill_in 'user_username', with: 'Ihazcoolfotos'
  fill_in 'user_email', with: 'user@gmail.com'
  fill_in 'user_password', with: '123456abc.'
  fill_in 'user_password_confirmation', with: '123456abc.'
  fill_in 'user_bio', with: "I'm pretty cool and stuff. With my photos and things."
  click_button 'Sign up'
end

def sign_in
  fill_in 'user_email', with: 'user@gmail.com'
  fill_in 'user_password', with: '123456abc.'
  click_button 'Log in'
end
