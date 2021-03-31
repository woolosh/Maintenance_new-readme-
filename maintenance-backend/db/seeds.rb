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

washingmachine = Item.create(category: "Home Appliances", name: "Whirlpool 4.3 cu.ft Top Load Washer with Quick Wash, 12 cycles", date: "1/21/2021", description:"Repaired leak coming from inside washing machine", price: 200, image: "https://mobileimages.lowes.com/product/converted/012505/012505384110.jpg?size=pdhi")
car = Item.create(category: "Transportation", name: "Lexus GS430", date: "12/2/20", description:"Replaced alternator", price: 623, image: "https://m.media-amazon.com/images/I/A1lryKkIrML._UY560_.png")
fridge = Item.create(category: "Home Appliances", name: "GE 25.3-cu ft Side-by-Side Refrigerator with Ice Maker", date: "11/13/20", description:"Repaired the icemaker", price: 120, image: "https://cdn11.bigcommerce.com/s-dj46qhetxl/images/stencil/1280x1280/products/123497/160897/Dispatcher_RequestType_Image&Name_CGI10419__21750.1603102055.jpg?c=1")
plumbing = Item.create(category: "Home", name: "24 Hour Plumbing", date: "10/25/20", description:"Fixed the water pressure of the faucets", price: 265, image: "https://static.thenounproject.com/png/682760-200.png")
lawn = Item.create(category: "Lawn Care", name: "Deere Lawn Services", date: "9/7/20", description:"Mowed Lawn", price: 30, image: "https://www.deere.com/assets/images/region-4/products/mowers/lawn-tractors/e100-series/e150-100series-hero-r4d102511.jpg")
computer = Item.create(category: "Electronics", name: "CyberpowerPC Eclipse P418A ATX", date: "8/17/20", description:"Replaced GPU", price: 500, image: "https://www.cyberpowerpc.com/images/cs/p418a/cs-450-145_220.png")
#  = Item.create(category: "home appliances", name: "washing machine", date: "12/2/20", description:"fixed/replaced/maintaned ", price: 3, image: "https://upload.wikimedia.org/wikipedia/commons/0/08/LGwashingmachine.jpg")
dryer = Item.create(category: "Home Appliances", name: "GE® 7.4 cu. ft. Capacity Smart aluminized alloy drum Gas Dryer with Sanitize Cycle and Sensor Dry", date: "12/21/20", description:"Replaced", price: 1100, image: "https://cdn11.bigcommerce.com/s-pacto3wrn2/images/stencil/780x665/products/3002/259952/Dispatcher_RequestType_Image&Name_5004-1332__39621.1615240644.jpg?c=2")
# fridge = Item.create(category: "home appliances", name: "washing machine", date: "12/2/20", description:"fixed/replaced/maintaned ", price: 3, image: "https://images-na.ssl-images-amazon.com/images/I/61tGvBnQW9L._AC_SX522_.jpg")
# washingmachine = Item.create(category: "home appliances", name: "washing machine", date: "12/2/20", description:"fixed/replaced/maintaned ", price: 3, image: "https://upload.wikimedia.org/wikipedia/commons/0/08/LGwashingmachine.jpg")
car2 = Item.create(category: "Transportation", name: "1995 Ford Tempo", date: "02/20/21", description:"oil change. Royal Purple synthetic oil. 5 quarts. ", price: 35, image: "https://images.cdn.circlesix.co/image/1/700/0/uploads/garage/1914798_1532361879457_5123343_-559443b93479a.jpg")
# fridge = Item.create(category: "home appliances", name: "washing machine", date: "12/2/20", description:"fixed/replaced/maintaned ", price: 3, image: "https://images-na.ssl-images-amazon.com/images/I/61tGvBnQW9L._AC_SX522_.jpg")
# washingmachine = Item.create(category: "home appliances", name: "washing machine", date: "12/2/20", description:"fixed/replaced/maintaned ", price: 3, image: "https://upload.wikimedia.org/wikipedia/commons/0/08/LGwashingmachine.jpg")
# dryer = Item.create(category: "home appliances", name: "washing machine", date: "12/2/20", description:"fixed/replaced/maintaned ", price: 4, image: "https://www.lg.com/us/images/dryers/md07000397/gallery/medium01.jpg")
# fridge = Item.create(category: "home appliances", name: "washing machine", date: "12/2/20", description:"fixed/replaced/maintaned ", price: 3, image: "https://images-na.ssl-images-amazon.com/images/I/61tGvBnQW9L._AC_SX522_.jpg")
# washingmachine = Item.create(category: "home appliances", name: "washing machine", date: "12/2/20", description:"fixed/replaced/maintaned ", price: 3, image: "https://upload.wikimedia.org/wikipedia/commons/0/08/LGwashingmachine.jpg")
# dryer = Item.create(category: "home appliances", name: "washing machine", date: "12/2/20", description:"fixed/replaced/maintaned ", price: 4, image: "https://www.lg.com/us/images/dryers/md07000397/gallery/medium01.jpg")
# fridge = Item.create(category: "home appliances", name: "washing machine", date: "12/2/20", description:"fixed/replaced/maintaned ", price: 3, image: "https://images-na.ssl-images-amazon.com/images/I/61tGvBnQW9L._AC_SX522_.jpg")
# washingmachine = Item.create(category: "home appliances", name: "washing machine", date: "12/2/20", description:"fixed/replaced/maintaned ", price: 3, image: "https://upload.wikimedia.org/wikipedia/commons/0/08/LGwashingmachine.jpg")
# dryer = Item.create(category: "home appliances", name: "washing machine", date: "12/2/20", description:"fixed/replaced/maintaned ", price: 4, image: "https://www.lg.com/us/images/dryers/md07000397/gallery/medium01.jpg")
# fridge = Item.create(category: "home appliances", name: "washing machine", date: "12/2/20", description:"fixed/replaced/maintaned ", price: 3, image: "https://images-na.ssl-images-amazon.com/images/I/61tGvBnQW9L._AC_SX522_.jpg")
















maintenance = Maintenance.create(description: "items in the house", price: 9, date: "12/12/19")
maintenanceItem = Maintenanceitem.create(item_id: washingmachine.id, maintenance_id: maintenance.id )



