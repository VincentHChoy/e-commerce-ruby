require 'rails_helper'

RSpec.describe "User Registration", type: :system do
  before do
    driven_by(:rack_test)
  end

  context "checks for matching pass word" do
    it "passwords must match" do
      visit "/signup"

      within('//[@id="new_user"]') do
        fill_in 'First Name:', with: 'anything'
        fill_in 'Last Name:', with: 'anything'
        fill_in 'Email:', with: 'vhchoy@ualberta.ca'
        fill_in 'Password:', with: 'password'
        fill_in 'Password Confirmation:', with: 'password'
      end

      click_button('Submit') # submits the form
      expect(page).to have_content 'Signed in as anything'
    end
  end
end