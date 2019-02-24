
vegetables = Category.create!(name: "Vegetables", description: "zhqt cqn djlq")
tomatoes = Species.create!(
  category: vegetables,
  name: "tomatoes",
  description: "all the tomatoes"
)
green_tomato = Plant.create!(
  name: "green moldevean tomato",
  description: "this is a green tomato",
  species: tomatoes
  )

