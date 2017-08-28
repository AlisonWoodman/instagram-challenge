require 'rails_helper'

RSpec.feature "User", type: :feature do
  let!(:user) { create(:user) }

  scenario "has default image on profile if none uploaded on sign up" do
    sign_up
    expect(page).to have_xpath("//img[contains(@src,'/images/thumb/missing.png')]")
  end

  # scenario "can upload their own photo on sign up" do
  #   sign_up
  # end

end
