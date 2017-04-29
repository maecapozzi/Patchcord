class User < ApplicationRecord
  include Clearance::User

  has_one :profile
  has_many :links
  has_many :instruments
  has_many :genres
end
