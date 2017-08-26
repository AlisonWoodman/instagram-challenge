require 'rails_helper'

RSpec.feature "User", type: :feature do
  let!(:user) { create(:user) }

  scenario "can sign up" do
    sign_up
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end

  context "/sign_in" do
  scenario "can sign out" do
    sign_up
    click_link 'Sign out'
    expect(page).to have_content("Signed out successfully")
  end
  end

  context "/sign_in" do
  scenario "can sign out" do
    sign_up
    click_link 'Sign out'
    expect(current_path).to eq("/users/sign_in")
  end
  end
end
