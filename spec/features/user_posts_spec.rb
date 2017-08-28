require 'rails_helper'

RSpec.feature 'User', type: :feature do

  scenario 'can sign up' do
    sign_up
    expect(page).to have_content('Post a new snap')
  end

  scenario 'can post a photo and description' do
    sign_up
    click_link 'Post a new snap'
    page.attach_file('post_image', Rails.root + 'spec/support/example.png')
    fill_in 'post_description', with: 'Great photo'
    click_button 'Submit'
    expect(page).to have_content('Great photo')
  end
end
