# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pizza.destroy_all
User.destroy_all

user = User.create!(email: 'tom@gmail.com', password: 'test1234')


marinara = Pizza.create!(name: 'Marinara', description: 'Tomatoes, garlic, oregano, and extra virgin olive oil. No cheese.', price: '£5')
margarita = Pizza.create!(name: 'Margarita', description: 'Tomatoes, mozzarella, basil, and extra virgin olive oil.', price: '£6')
pepperoni = Pizza.create!(name: 'Pepperoni', description: 'Classic Margarita base with two different types of pepperoni on top', price: '£7')
diavola = Pizza.create!(name: 'Diavola', description: 'Our Pepperoni pizza with extra chillies for a kick!', price: '£7.50')
quattro_formagi = Pizza.create!(name: 'Quattro Formagi', description: 'A four cheese combination of mozzarella and three local cheeses parmigiano-reggiano, ricotta and Gorgonzola.', price: '£8')
parma = Pizza.create!(name: 'Parma', description: 'Tomato sauce, mozzarella, parma Ham with rocket and extra shavings of Parmesan', price: '£8')
bismark = Pizza.create!(name: 'Bismarck', description: 'Tomato sauce, mozzarella, ham, and fried egg on top', price: '£9')
calzone = Pizza.create!(name: 'Calzone', description: 'Our folded pizza. Tomato sauce, mozzarella, ham, mushrooms, artichokes, anchovies, and oregano.', price: '£10')
