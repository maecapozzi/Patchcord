require "rails_helper"
require "support/features/clearance_helpers"

RSpec.feature "User visits profile" do
  scenario "by navigating to the page" do
    password = "password"
    email =  Faker::Internet.email
    user = FactoryGirl.create(:user, email: email, password: password)
    sign_in_with user.email, password
    visit root_path

    click_link ("Profile")

    expect(current_path).to eq user_path(user.id)
  end
end
