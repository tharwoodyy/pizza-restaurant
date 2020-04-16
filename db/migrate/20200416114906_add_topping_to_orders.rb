class AddToppingToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :topping, null: false, foreign_key: true
  end
end
