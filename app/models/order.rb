class Order < ApplicationRecord
  belongs_to :user
  belongs_to :pizza

  # has_many :toppings, through: :pizzas

  validates :quantity, presence: true
end
