require 'spec_helper'

feature 'admin' do

  scenario 'an admin accesses the dashboard' do
    user = FactoryGirl.build(:user)
    visit root_path
    click_link 'Log in'
    fill_in :user_email, with: user.email
    fill_in :user_password, with: user.password
    click_button "Sign in"

    current_path.should eq rails_admin_path
    page.should have_content 'Site Administration'
  end

end
