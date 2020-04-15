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


marinara = Pizza.create!(name: 'Marinara', description: 'Tomatoes, garlic, oregano, and extra virgin olive oil. No cheese.', price: '4')
url_marinara = "https://images.pexels.com/photos/3343621/pexels-photo-3343621.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
marinara.photo.attach(io: open(url_marinara), filename: 'marinara')

margarita = Pizza.create!(name: 'Margarita', description: 'Tomatoes, mozzarella, basil, and extra virgin olive oil.', price: '5')
url_margarita = "https://images.unsplash.com/photo-1574071318508-1cdbab80d002?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
margarita.photo.attach(io: open(url_margarita), filename: 'margarita')

pepperoni = Pizza.create!(name: 'Pepperoni', description: 'Classic Margarita base with two different types of pepperoni on top', price: '6')
url_pepperoni = "https://images.pexels.com/photos/3682837/pexels-photo-3682837.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
pepperoni.photo.attach(io: open(url_pepperoni), filename: 'pepperoni')

diavola = Pizza.create!(name: 'Diavola', description: 'Our Pepperoni pizza with extra chillies for a kick!', price: '6')
url_diavola = "https://images.unsplash.com/photo-1565564194296-14db6e0bf8a3?ixlib=rb-1.2.1&auto=format&fit=crop&w=564&q=80"
diavola.photo.attach(io: open(url_diavola), filename: 'diavola')

pollo = Pizza.create!(name: 'Pollo', description: 'Our Pepperoni pizza with extra chillies for a kick!', price: '7')
url_pollo = "https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
pollo.photo.attach(io: open(url_pollo), filename: 'pollo')

quattro_formaggi = Pizza.create!(name: 'Quattro Formaggi', description: 'A four cheese combination of mozzarella and three local cheeses parmigiano-reggiano, ricotta and Gorgonzola.', price: '7')
url_quattro_formaggi = "https://images.pexels.com/photos/2608049/pexels-photo-2608049.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
quattro_formaggi.photo.attach(io: open(url_quattro_formaggi), filename: 'quattro_formaggi')

parma = Pizza.create!(name: 'Parma', description: 'Tomato sauce, mozzarella, parma Ham with rocket and extra shavings of Parmesan', price: '8')
url_parma = "https://images.unsplash.com/photo-1528137871618-79d2761e3fd5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
parma.photo.attach(io: open(url_parma), filename: 'parma')

bismark = Pizza.create!(name: 'Bismarck', description: 'Tomato sauce, mozzarella, ham, and fried egg on top', price: '8')
url_bismark = "https://images.unsplash.com/photo-1571066811602-716837d681de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=462&q=80"
bismark.photo.attach(io: open(url_bismark), filename: 'bismark')

calzone = Pizza.create!(name: 'Calzone', description: 'Our folded pizza. Tomato sauce, mozzarella, ham, mushrooms, artichokes, anchovies, and oregano.', price: '9')
url_calzone = "https://images.unsplash.com/photo-1536964549204-cce9eab227bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80"
calzone.photo.attach(io: open(url_calzone), filename: 'calzone')
