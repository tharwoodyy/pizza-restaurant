class Pizza < ApplicationRecord
  has_many :bookings, dependent: :destroy

end
