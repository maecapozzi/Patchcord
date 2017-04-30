require "rails_helper"

RSpec.feature "User updates profile" do
  scenario "by clicking link from profile" do
    password = "password"
    email =  Faker::Internet.email
    user = FactoryGirl.create(:user, first_name: "Mae", last_name: "Capozzi", email: email, password: password)
    sign_in_with user.email, password
    visit user_path(user.id)

    click_link("Update Profile")

    expect(current_path).to eq edit_user_path(user.id)
  end
end
