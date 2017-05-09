class User < ApplicationRecord
  include Clearance::User

  ROLES = [
    MUSICIAN_ROLE = "musician".freeze,
    BOOKER_ROLE = "booker".freeze,
  ].freeze

  has_many :links
  has_many :instruments
  has_many :user_genres
  has_many :genres, through: :user_genres

  def self.filter(role)
    if ROLES.include?(role)
      where(role: role)
    else
      raise ActiveRecord::RecordNotFound
    end
  end
end
