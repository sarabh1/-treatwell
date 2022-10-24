# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Reservation.destroy_all
Service.destroy_all
# Employee.destroy_all
Shop.destroy_all
User.destroy_all

user_1 = User.create(first_name: "Ophe", last_name: "Ng", address:"Marseille", telephone: "0123456", email: "ophe.ng@mail.com", password: "azerty")
user_2 = User.create(first_name: "Mmi", last_name: "shiatzu", address:"Marseille", telephone: "01239996", email: "mimi@mail.com", password: "azerty")
user_3 = User.create(first_name: "Marco", last_name: "coiffure", address:"aix", telephone: "49958996", email: "marco@mail.com", password: "azerty")
user_4 = User.create(first_name: "Marine", last_name: "esthetique", address:"marseille", telephone: "00349496", email: "marine@mail.com", password: "azerty")

# SHOPS
shop_1 = Shop.create(user: user_2, name:"massage shop", address:"Marseille 13005", telephone:"029394923020", email:"massage@m.fr", description:"salon de massage super génial")
shop_2 = Shop.create(user: user_3, name:"Marco Coiffure - Mixte", address:"Aix-en-Provence", telephone:"0349592520", email:"marcocoiffure@m.fr", description:"Coiffeur visagiste - Mixte")
shop_3 = Shop.create(user: user_4, name:"Marine esthetik", address:"Marseille 13009", telephone:"22356020", email:"marine estetik@m.fr", description:"Salon d'esthétique - onglerie, épilation, soins")

#SERVICES
service_1 = Service.create!(shop: shop_1, title:"massage californien", price:"60 €", duration:"45 min")
service_2 = Service.create!(shop: shop_1, title:"massage shiatzu", price:"80 €", duration:"45 min")
service_3 = Service.create!(shop: shop_1, title:"massage thailandais", price:"70 €", duration:"45 min")

service_4 = Service.create!(shop: shop_2, title:"coupe homme", price:"20 €", duration:"15 min")
service_5 = Service.create!(shop: shop_2, title:"couleur + shampoo", price:"80 €", duration:"60 min")
service_6 = Service.create!(shop: shop_2, title:"couleur + coupe + soin", price:"120 €", duration:"120 min")

service_7 = Service.create!(shop: shop_3, title:"french manucure", price:"60 €", duration:"40 min")
service_8 = Service.create!(shop: shop_3, title:"épilation maillot", price:"30 €", duration:"30 min")

#EMPLOYEES
# employee_1= employee.create(service: service_1, first_name:"Anna")

# employee_2= employee.create(service: service_4,first_name:"Marco")
# employee_3= employee.create(service: service_6,first_name:"Jenny")

# employee_4= employee.create(service: service_7,first_name:"Louisa")

#RESERVATIONS
resa_1 = Reservation.create(user: user_1, service: service_1, total_price:"60€", start_date:Date.today, end_date:Date.today + 1)
resa_2 = Reservation.create(user: user_1, service: service_2, total_price:"80€", start_date:Date.today+ 1, end_date:Date.today + 1)

resa_3 = Reservation.create(user: user_1, service: service_6, total_price:"120€", start_date:Date.today + 3, end_date:Date.today + 4)

resa_4 = Reservation.create(user: user_1, service: service_7, total_price:"60€", start_date:Date.today+2, end_date:Date.today + 3)
