class User < ApplicationRecord
  include Clearance::User

  has_many :links
  has_many :instruments
  has_many :user_genres
  has_many :genres, through: :user_genres
end
