#create sample shoes
Product.create!(name: "Copitas", description: "Stuf Stuff Stuf", gender: "male", age: "adult", price: 30)
Product.create!(name: "Chedron", description: "Stuf Stuff Stuf", gender: "male", age: "adult", price: 25)
Product.create!(name: "Sandal", description: "Stuf Stuff Stuf", gender: "male", age: "adult", price: 30)

a = Product.first

#create sample categories
Category.create!(productType: "shoe")
Category.create!(productType: "lether")

Product.find_by(name: "Copitas").color_by_sizes.create(color: "gold", US: "7", MX: "25", quantity: 3)
Product.find_by(name: "Copitas").color_by_sizes.create(color: "gold", US: "8", MX: "26", quantity: 2)
Product.find_by(name: "Copitas").color_by_sizes.create(color: "gold", US: "9", MX: "27", quantity: 1)
Product.find_by(name: "Copitas").color_by_sizes.create(color: "gold", US: "10", MX: "28", quantity: 9)
Product.find_by(name: "Copitas").color_by_sizes.create(color: "gold", US: "11", MX: "29", quantity: 5)
Product.find_by(name: "Copitas").color_by_sizes.create(color: "gold", US: "12", MX: "30", quantity: 1)

Product.find_by(name: "Chedron").color_by_sizes.create(color: "red", US: "7", MX: "25", quantity: 5)
Product.find_by(name: "Chedron").color_by_sizes.create(color: "red", US: "8", MX: "26", quantity: 3)
Product.find_by(name: "Chedron").color_by_sizes.create(color: "red", US: "9", MX: "27", quantity: 1)
Product.find_by(name: "Chedron").color_by_sizes.create(color: "red", US: "10", MX: "28", quantity: 2)
Product.find_by(name: "Chedron").color_by_sizes.create(color: "red", US: "11", MX: "29", quantity: 3)
Product.find_by(name: "Chedron").color_by_sizes.create(color: "red", US: "12", MX: "30", quantity: 1)