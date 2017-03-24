class User < ApplicationRecord
  has_many :links, :through => :user_links
  has_many :instruments, :through => :user_instruments
  has_many :genres, :through => :user_genres
  has_many :venues
end
