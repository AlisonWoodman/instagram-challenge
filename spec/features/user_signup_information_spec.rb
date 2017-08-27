require 'rails_helper'

RSpec.feature "User", type: :feature do
  let!(:user) { create(:user) }

  scenario "can add details upon signup" do
    sign_up
    expect(page).to have_content('Welcome! You have signed up successfully.')
    expect(current_path).to eq("/")
  end
end
