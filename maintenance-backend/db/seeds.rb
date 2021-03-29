# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
Maintenance.destroy_all
Maintenanceitem.destroy_all

washingmachine = Item.create(category: "home appliances", name: "washing machine", date: "12/2/20", description:"fixed/replaced/maintaned ", price: 3)
dryer = Item.create(category: "home appliances", name: "washing machine", date: "12/2/20", description:"fixed/replaced/maintaned ", price: 4)
fridge = Item.create(category: "home appliances", name: "washing machine", date: "12/2/20", description:"fixed/replaced/maintaned ", price: 3)

maintenance = Maintenance.create(description: "items in the house", price: 9, date: "12/12/19")


maintenanceItem = Maintenanceitem.create(item_id: washingmachine.id, maintenance_id: maintenance.id )

