require 'rails_helper'

RSpec.feature "User", type: :feature do
  let!(:user) { create(:user) }

  scenario "can sign up" do
    visit('/users/sign_up')
    fill_in 'user_email', with: 'user@gmail.com'
    fill_in 'user_password', with: '123456abc.'
    fill_in 'user_password_confirmation', with: '123456abc.'
    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end

  # context "/sign_in" do
  # scenario "After signing out, I'm forwarded to sign in" do
  #   sign_up
  #   click_button 'Sign out'
  #   expect(current_path).to eq "/users/sign_in"
  # end
  # end
end
