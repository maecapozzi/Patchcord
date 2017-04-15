class User < ApplicationRecord
  has_many :links
  has_many :instruments
  has_many :genres
end
