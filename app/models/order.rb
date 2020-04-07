class Order < ApplicationRecord
  belongs_to :user
  belongs_to :pizza

  validates :quantity, presence: true
end
