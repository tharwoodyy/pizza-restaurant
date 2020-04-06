class CreatePizzas < ActiveRecord::Migration[6.0]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
