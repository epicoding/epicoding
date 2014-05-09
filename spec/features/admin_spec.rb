require 'spec_helper'

feature 'admin' do

  scenario 'an admin accesses the dashboard' do
    admin = FactoryGirl.build(:admin)
    visit root_path
    click_link 'Log in'
    fill_in :user_email, with: admin.email
    fill_in :user_password, with: admin.password
    click_button "Sign in"

    current_path.should eq rails_admin_path
    page.should have_content 'Site Administration'
  end

end
