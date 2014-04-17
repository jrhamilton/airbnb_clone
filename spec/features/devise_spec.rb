require 'spec_helper'

feature 'test devise paths' do
  scenario 'signing up' do
    visit new_user_registration_path
    expect(page).to have_content 'Sign up'
  end
end
