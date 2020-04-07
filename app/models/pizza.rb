class Pizza < ApplicationRecord
  has_one_attached :photo
  has_many :orders, dependent: :destroy
end
