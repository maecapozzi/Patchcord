require "rails_helper"

RSpec.feature "User updates profile" do
  scenario "by clicking link from profile" do
    user = FactoryGirl.create(:user)
    visit user_path(user.id, as: user)

    click_link("Update Profile")

    expect(current_path).to eq edit_user_path(user.id)
  end
end
