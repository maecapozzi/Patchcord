class UserInstrument < ApplicationRecord
  belongs_to :users
  belongs_to :instruments
end
