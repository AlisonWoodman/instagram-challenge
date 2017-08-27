require 'rails_helper'

feature 'On the profile page' do
  scenario 'I can see my details displayed' do
    sign_up
    expect(page).to have_content('Ihazcoolfotos')
    expect(page).to have_content("I'm pretty cool and stuff. With my photos and things.")
  end
end
