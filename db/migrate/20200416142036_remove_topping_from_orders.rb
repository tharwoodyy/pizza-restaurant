class RemoveToppingFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :topping, null: false, foreign_key: true
  end
end
