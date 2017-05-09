require "rails_helper"

RSpec.feature "User visits profile" do
  scenario "by navigating to the page" do
    user = FactoryGirl.create(:user)
    visit root_path(as: user)

    click_link ("Profile")

    expect(current_path).to eq user_path(user.id)
  end
end
