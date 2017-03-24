class UserLink < ApplicationRecord
  belongs_to :users
  belongs_to :links
end
