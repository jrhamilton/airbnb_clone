require 'spec_helper'

def create_new_user
  visit new_user_registration_path
    fill_in 'username', with: 'Testolio'
    fill_in 'email', with: 'test@test.com'
    fill_in 'password', with: '12345678'
    fill_in 'password_confirmation', with: '12345678'
    click_button 'Sign up'
end

feature 'signing up new users' do
  scenario 'add a new user with email and password on the sign up page' do
    create_new_user
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end

