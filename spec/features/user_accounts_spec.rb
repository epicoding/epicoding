require 'spec_helper'

feature 'user_accounts' do

	scenario 'a user signs up for the website' do
		user = FactoryGirl.build(:user)
		visit "users/sign_up"
		fill_in :user_email, with: user.email
		fill_in :user_password, with: user.password
		fill_in :user_password_confirmation, with: user.password
		click_button "Sign up"
		page.should have_content "Welcome! You have signed up successfully."
	end

	scenario 'an existing user signs in' do
		user = FactoryGirl.create(:user)
		visit root_path
		click_link 'Log in'
		fill_in :user_email, with: user.email
		fill_in :user_password, with: user.password
		click_button "Sign in"
		page.should have_content user.email
	end
end
