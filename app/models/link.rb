class Link < ApplicationRecord
  has_many :users, :through => :user_links
end
