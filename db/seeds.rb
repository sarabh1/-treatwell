# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Reservation.destroy_all
Service.destroy_all
Shop.destroy_all
User.destroy_all

user_1 = User.create(first_name: "Ophe", last_name: "Ng", address:"Marseille", telephone: "0123456", email: "ophe.ng@mail.com", password: "azerty")
user_2 = User.create(first_name: "Mmi", last_name: "shiatzu", address:"Marseille", telephone: "01239996", email: "mimi@mail.com", password: "azerty")
user_3 = User.create(first_name: "Marco", last_name: "coiffure", address:"aix", telephone: "49958996", email: "marco@mail.com", password: "azerty")

shop_1 = Shop.create(user: user_2, name:"massage shop", address:"Marseille 13005", telephone:"029394923020", email:"massage@m.fr", description:"salon de massage super génial")
shop_2 = Shop.create(user: user_2, name:"massage shop", address:"Marseille 13005", telephone:"029394923020", email:"massage@m.fr", description:"salon de massage super génial")

service_1 = Service.create!(shop: shop_1, title:"massage californien", price:"60 €", duration:"45 min", start_date:Date.today, end_date:Date.today + 1)

resa_1 = Reservation.create(user: user_1, service: service_1, total_price:"60€")
