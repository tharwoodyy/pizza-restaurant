class AddToppingsToPizzas < ActiveRecord::Migration[6.0]
  def change
    add_column :pizzas, :topping, :string
  end
end
