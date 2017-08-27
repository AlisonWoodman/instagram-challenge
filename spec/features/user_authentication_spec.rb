require 'rails_helper'

RSpec.feature "User", type: :feature do
  let!(:user) { create(:user) }

  scenario "can sign up" do
    sign_up
    expect(page).to have_content('Welcome! You have signed up successfully.')
    expect(current_path).to eq("/")
  end

  context "/sign_out" do
  scenario "can sign out" do
    sign_up
    click_link 'Sign out'
    expect(page).to have_content("Signed out successfully")
    expect(current_url).to eq(new_user_session_url)
  end
  end

  context "/sign_in" do
  scenario "can sign out" do
    sign_up
    click_link 'Sign out'
    sign_in
    expect(page).to have_content("Signed in successfully")
  end
  end
end
