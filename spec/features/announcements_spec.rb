require 'rails_helper'

RSpec.describe "the signin process", :type => :feature do
  before :each do
    Admin.create(:email => 'admin@example.com', :password => 'password')
  end

  it "signs me in" do
    visit '/admin/'

    fill_in 'admin[email]', with: 'admin@example.com'
    fill_in 'admin[password]', with: 'password'
    click_button 'Log in'

    click_link 'Announcements'
    click_link 'New Announcement'

    fill_in 'announcement[title]', with: 'Hey'
    fill_in 'announcement[content]', with: 'Content'
    click_button 'Create Announcement'

    expect(page).to have_text('Announcement was successfully created.')

    # click_link 'Events'
    # save_and_open_page
    # visit '/sessions/new'
    # within("#session") do
    #   fill_in 'Email', :with => 'user@example.com'
    #   fill_in 'Password', :with => 'password'
    # end
    # click_button 'Sign in'
    # expect(page).to have_content 'Success'
  end
end
