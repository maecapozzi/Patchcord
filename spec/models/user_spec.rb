require 'rails_helper'

RSpec.describe User, type: :model do
  describe ".filter" do
    it "produces all of the musicians if you are searching for a musician" do
      musicians = FactoryGirl.create_list(:user, 2, :musician)
      booker = FactoryGirl.create(:user, :booker)

      results = User.filter(User::MUSICIAN_ROLE)

      expect(results).to eq(musicians)
    end

    it "produces all of the bookers if you are searching for a booker" do
      bookers = FactoryGirl.create_list(:user, 2, :booker)
      musician = FactoryGirl.create(:user, :musician)

      results = User.filter(User::BOOKER_ROLE)

      expect(results).to eq(bookers)
    end

    it "raises" do
      expect{User.filter("meow")}.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
