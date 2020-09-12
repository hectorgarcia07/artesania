#create sample shoes
Product.create!(name: "Copitas", description: "Stuf Stuff Stuf", gender: "male", age: "adult", price: 30)
Product.create!(name: "Chedron", description: "Stuf Stuff Stuf", gender: "male", age: "adult", price: 25)
Product.create!(name: "Sandal", description: "Stuf Stuff Stuf", gender: "male", age: "adult", price: 30)

#create sample categories
Category.create!(productType: "shoe")
Category.create!(productType: "lether")
Category.create!(productType: "open toe")

