puts "Killing all the GardenPlants"
GardenPlant.destroy_all

puts "Killing all the Plants"
Plant.destroy_all

puts "Killing all the Species"
Species.destroy_all

puts "Killing all the Categories"
Category.destroy_all


puts "creating flowers category"

#USER/STATUS
status_3 = Status.new()
user_3 = User.create(email: "liad@gmail.com", password: "123456")
status_4 = Status.new()
user_4 = User.create(email: "barak@gmail.com", password: "123456")
status_2 = Status.new()
user_2 = User.create(email: "orianne@gmail.com", password: "123456")
status = Status.new()
user = User.create(email: "matalon@gmail.com", password: "123456")

flowers = Category.create!(
 name: "Flowers",
 description: "Variety of flowers suitable for your garden or inside of your home.")

# SPECIES
 jasmin = Species.create!(
   category: flowers,
   name: "Jasmin",
   description: "All types of Jasmin"
 )
   # REQUIREMENTS
     a_req = Requirement.new(
       light: "Full Sun to Partial Shade",
       temperature: "15 and 25",
       watering: "Mesic"
       )
#     # PLANTS
   jasmin_rossi = Plant.new(
     name: "Daylily (Hemerocallis 'Jasmine Rossi')",
     description: "Lilium lancifolium is an Asian species of lily, native to China, Japan, Korea, and the Russian Far East. It is widely planted as an ornamental because of its showy orange-and-black flowers, and has become naturalized in numerous scattered locations in eastern North America.",
     species: jasmin
   )
   jasmin_rossi.requirement = a_req
   jasmin_rossi.save

  GardenPlant.create(plant: jasmin_rossi, user: user, location:"out", status: status)

    ########

# SPECIES
  lily = Species.create!(
    category: flowers,
    name: "Lily",
    description: "All types of Lily"
  )

# REQUIREMENTS
  w_req = Requirement.new(
    light: "Full Sun to Partial Shade",
    temperature: "18 and 31",
    watering: "Mesic Dry"
  )
# PLANT
  tiger_lily = Plant.new(
    name: "Tiger Lily",
    description: "Lilium lancifolium is an Asian species of lily, native to China, Japan, Korea, and the Russian Far East. It is widely planted as an ornamental because of its showy orange-and-black flowers, and has become naturalized in numerous scattered locations in eastern North America.",
    species: lily
  )
  tiger_lily.requirement = a_req
  tiger_lily.save

  # GARDENPLANT
  GardenPlant.create(plant: tiger_lily, user: user_2, location:"out", status: status_2)
  GardenPlant.create(plant: tiger_lily, user: user, location:"out", status: status)

    ########

# PLANT
  madona_lily = Plant.new(
    name: "Madonna Lily",
    description: "Lilium candidum, the Madonna lily, is a plant in the true lily family. It is native to the Balkans and Middle East, and naturalized in other parts of Europe, including France, Italy, and Ukraine, and in North Africa, the Canary Islands, Mexico, and other regions.",
    species: lily
  )
  madona_lily.requirement = a_req
  madona_lily.save

# GARDENPLANT
  GardenPlant.create(plant: madona_lily, user: user_4, location:"out", status: status_4)

    ########

# PLANT
  wood_lily = Plant.new(
    name: "Wood Lily",
    description: "Lilium philadelphicum, also known as the wood lily, Philadelphia lily, prairie lily or western red lily, is a perennial species of lily native to North America.",
    species: lily
  )
  madona_lily.requirement = a_req
  madona_lily.save

# GARDENPLANT
  GardenPlant.create(plant: madona_lily, user: user_3, location:"out", status: status_3)
  GardenPlant.create(plant: madona_lily, user: user_4, location:"out", status: status_4)

    ########

# SPECIES
  orchids = Species.create!(
    category: flowers,
    name: "Orchids",
    description: "All types of Orchids"
  )

# REQUIREMENTS
  v_req = Requirement.new(
    light: "Partial Shade",
    temperature: "10 and 21",
    watering: "Mesic dry"
  )

# PLANTS
  cattleya_orchids = Plant.new(
    name: "Cattleya orchids",
    description: "Cattleya is a genus of orchids from Costa Rica south to Argentina.",
    species: orchids
  )
  madona_lily.requirement = v_req
  madona_lily.save

# GARDENPLANT
  GardenPlant.create(plant: madona_lily, user: user_2, location:"out", status: status_2)

    ########

# Plants
  boat_orchid = Plant.new(
    name: "Boat orchid",
    description: "Cymbidium, commonly known as boat orchids, is a genus of evergreen flowering plants in the orchid family Orchidaceae.",
    species: orchids
  )
  boat_orchid.requirement = v_req
  boat_orchid.save

# GARDENPLANT
  GardenPlant.create(plant: boat_orchid, user: user_3, location:"out", status: status_3)
  GardenPlant.create(plant: boat_orchid, user: user, location:"out", status: status)

    ########

# CATEGORY
puts "creating vegetables category"
  vegetables = Category.create!(
    name: "Vegetables",
    description: "Fresh fruits are generally high in fiber, vitamin C, and water. Regular consumption of fruit is generally associated with reduced risks of several diseases and functional declines associated with aging")

  # SPECIES
    squash = Species.create!(
      category: vegetables,
      name: "Squash",
      description: "All types of Squash"
    )

  # REQUIREMENTS
    b_req = Requirement.new(
      light: "Full Sun",
      temperature: "65 and 75",
      watering: "Mesic"
    )
  # PLANT
    butternut_squash = Plant.new(
      name: "Winter Squash ('North Georgia Candy Roaster')",
      description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
      species: squash,
    )
    butternut_squash.requirement = b_req
    butternut_squash.save

  #USER/STATUS
    # GARDENPLANT
    GardenPlant.create(plant: butternut_squash, user: user, location:"out", status: status)

    ########

  # SPECIES
    onion = Species.create!(
      category: vegetables,
      name: "Onion",
      description: "All types of Onion"
    )

    ########

  # REQUIREMENTS
    z_req = Requirement.new(
      light: " Full Sun to Partial Shade",
      temperature: "15 and 30",
      watering: "Mesic"
      )

  # PLANT
    egyptian_walking_onion = Plant.new(
      name: "Egyptian Walking Onion (Allium x proliferum)",
      description: "It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
      species: onion,
      uses: "Uses: Culinary Herb Vegetable"
    )
      egyptian_walking_onion.requirement = z_req
      egyptian_walking_onion.save

      # GARDENPLANT
      GardenPlant.create(plant: egyptian_walking_onion, user: user_2, location:"out", status: status)

    ########

  # REQUIREMENTS
    y_req = Requirement.new(
      light: " Full Sun",
      temperature: "17 and 32",
      watering: "Mesic"
      )

  # PLANT
    garden_onion = Plant.new(
      name: "Garden Onion (Allium cepa 'Walla Walla Sweet')",
      description: "It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
      species: onion,
      uses: "Uses: Culinary Herb Vegetable"
    )
      garden_onion.requirement = y_req
      garden_onion.save

    # GARDENPLANT
    GardenPlant.create(plant: garden_onion, user: user, location:"out", status: status)

    ########

  # PLANT
    bunching_onion = Plant.new(
      name: "Bunching Onion (Allium cepa 'White Lisbon')",
      description: "It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
      species: onion,
      uses: "Culinary Herb Vegetable"
    )
      bunching_onion.requirement = y_req
      bunching_onion.save

    # GARDENPLANT
    GardenPlant.create(plant: bunching_onion, user: user_3, location:"out", status: status_3)

    ########

  # SPECIES
    cabbage = Species.create!(
      category: vegetables,
      name: "Cabbage",
      description: "All types of Cabbage"
    )

  # PLANTS
    cannonball_cabbage = Plant.new(
      name: "Cannonball Cabbage",
      description: "More commonly known as green cabbage, the cannonball cabbage is one of the most popular cabbage varieties. It is so named for the way its leaves wound tightly over one another in a dense, compact fashion; with the final product resembling a cannonball.",
      species: cabbage
    )
    cannonball_cabbage.requirement = y_req
    cannonball_cabbage.save

  # GARDENPLANT
    GardenPlant.create(plant: bunching_onion, user: user, location:"out", status: status)

    ########

  # PLANTS
    bok_choy = Plant.new(
      name: "Bok Choy",
      description: "bok choy, bai cai or pak choi but they all really mean the same thing: a dark, leafy vegetable with slender stems that's more reminiscent of Swiss chard or spinach than it is a cannonball cabbage.",
      species: cabbage
    )
    bok_choy.requirement = y_req
    bok_choy.save

  # GARDENPLANT
    GardenPlant.create(plant: bok_choy, user: user_4, location:"out", status: status_4)

    ########

  # PLANTS
    choy_sum = Plant.new(
      name: "Choy Sum ",
      description: "Choy Sum, bai cai or pak choi but they all really mean the same thing: a dark, leafy vegetable with slender stems that's more reminiscent of Swiss chard or spinach than it is a cannonball cabbage.",
      species: cabbage
    )
    choy_sum.requirement = y_req
    choy_sum.save

  # GARDENPLANT
    GardenPlant.create(plant: choy_sum, user: user_3, location:"out", status: status_3)

    ########

  # CATEGORY
    puts "creating fruits category"
      fruits = Category.create!(
        name: "Fruits",
        description: "Vegetables can be eaten either raw or cooked and play an important role in human nutrition, being mostly low in fat and carbohydrates, but high in vitamins, minerals and dietary fiber. Many nutritionists encourage people to consume plenty of fruit and vegetables, five or more portions a day often being recommended.")

  # SPECIES
    strawberries = Species.create!(
        category: fruits,
        name: "Strawberries",
        description: "All types of Strawberries"
    )

  # PLANTS
    allstars = Plant.new(
      name: "Allstars",
      description: "Allstars are generally paler than other varieties. They grow big and firm, though, and have plenty of sweetness and juice. They are the kind of berries that are particularly great for slicing and using in salads.",
      species: strawberries
    )
    allstars.requirement = w_req
    allstars.save

  # GARDENPLANT
    GardenPlant.create(plant: allstars, user: user, location:"out", status: status)

    ########

  # PLANTS
    ventana = Plant.new(
      name: "Ventana",
      description: "Ventana strawberries are bright red fruit, slightly lighter in color, a good flavor, standard shape, and large size with excellent fruit quality.",
      species: strawberries
    )
    ventana.requirement = w_req
    ventana.save

  # GARDENPLANT
    GardenPlant.create(plant: ventana, user: user_3, location:"out", status: status_3)
    GardenPlant.create(plant: ventana, user: user_4, location:"out", status: status_4)

    ########
  # PLANTS
    alpine = Plant.new(
      name: "Alpine",
      description: "Alpine strawberries (fraises des bois in French) are a tiny and exquisitely sweet wild strawberry from France.",
      species: strawberries
    )
    alpine.requirement = w_req
    alpine.save

  # GARDENPLANT
    GardenPlant.create(plant: alpine, user: user_2, location:"out", status: status_3)

    ########

  # SPECIES
    tomatoes = Species.create!(
      category: fruits,
      name: "Tomatoes",
      description: "All types of Tomatoes"
    )

  # PLANTS
    san_marzano = Plant.new(
      name: "San Marzano",
      description: "San Marzano tomatoes are thinner and more pointed. The flesh is much thicker with fewer seeds, and the taste is stronger, sweeter and less acidic.",
      species: tomatoes
    )
    san_marzano.requirement = y_req
    san_marzano.save

  # GARDENPLANT
    GardenPlant.create(plant: san_marzano, user: user_2, location:"out", status: status_2)

  # PLANTS
    cherokee_purple = Plant.new(
      name: "Cherokee Purple",
      description: "Cherokee Purple is the name of a cultivar of tomato that develops a fruit with a deep, dusky-rose color while maintaining a somewhat greenish hue near the stem when mature for eating.",
      species: tomatoes,
      uses: "Culinary Herb Vegetable"
    )
    cherokee_purple.requirement = y_req
    cherokee_purple.save

  # GARDENPLANT

    GardenPlant.create(plant: cherokee_purple, user: user_4, location:"out", status: status_4)


  ########

  # PLANTS
    cherry_tomato = Plant.new(
      name: "Cherry Tomato",
      description: "The cherry tomato is a type of small round tomato believed to be an intermediate genetic admixture between wild currant-type tomatoes and domesticated garden tomatoes.",
      species: tomatoes,
      uses: "Culinary Herb Vegetable"
    )
    cherry_tomato.requirement = y_req
    cherry_tomato.save

    # GARDENPLANT
      GardenPlant.create(plant: cherry_tomato, user: user_3, location:"in", status: status_3)

    ########

  # CATEGORY
    puts "creating herbs category"

    herbs = Category.create!(
      name: "Herbs",
      description: "Variety of herbs used for culinary purposes, herbal teas, medical purposes and even spiritual purposes.")

  # SPECIES
    basil = Species.create!(
      category: herbs,
      name: "Basil",
      description: "All types of Basil"
    )

  # PLANTS
    sweet_basil = Plant.new(
      name: "Sweet Basil",
      description: "Sweet Basil is your traditional style Basil that most of us use in our tomato sauces, pesto, in soups, and I use it a lot to make my own Italian seasonings.",
      species: basil,
      uses: "Culinary Herb"
    )
    sweet_basil.requirement = a_req
    sweet_basil.save

  # GARDENPLANT
    GardenPlant.create(plant: sweet_basil, user: user_2, location:"in", status: status_2)

    ########

  # PLANTS
    holy_basil = Plant.new(
      name: "Holy Basil (Ocimum tenuiflorum)",
      description: "Holy Basil is flatter and pointier than traditional sweet basil. It also has a more aromatic flavor.",
      species: basil
    )
    holy_basil.requirement = a_req
    holy_basil.save

  # GARDENPLANT
    GardenPlant.create(plant: sweet_basil, user: user, location:"in", status: status)

    ########

  # SPECIES
    thymes = Species.create!(
      category: herbs,
      name: "Thymes",
      description: "All types of Thymes"
    )

  # REQUIREMENTS
    x_req = Requirement.new(
      light: "Full Sun",
      temperature: "20 and 35",
      watering: "Mesic Dry"
    )

  # PLANTS
    common_thyme = Plant.new(
      name: "Common Thyme (Thymus vulgaris)",
      description: "Sweet Basil is your traditional style Basil that most of us use in our tomato sauces, pesto, in soups, and I use it a lot to make my own Italian seasonings.",
      species: thymes,
      uses: "Groundcover Culinary Herb"
    )
    common_thyme.requirement = x_req
    common_thyme.save

  # GARDENPLANT
    GardenPlant.create(plant: common_thyme, user: user_3, location:"out", status: status_3)

    ########

  # PLANTS
    creeping_thyme = Plant.new(
      name: "Creeping Thyme (Thymus serpyllum)",
      description: "Sweet Basil is your traditional style Basil that most of us use in our tomato sauces, pesto, in soups, and I use it a lot to make my own Italian seasonings.",
      species: thymes,
      uses: "Groundcover Culinary Herb"
    )
    common_thyme.requirement = x_req
    common_thyme.save

  # GARDENPLANT
    GardenPlant.create(plant: common_thyme, user: user_4, location:"out", status: status_4)

    ########

  # SPECIES
    mushrooms = Species.create!(
      category: vegetables,
      name: "Mushrooms",
      description: "All types of Mushrooms"
    )

  # REQUIREMENTS
    u_req = Requirement.new(
      light: "Full Sun",
      temperature: "15 and 23",
      watering: "Mesic"
    )
    # PLANTS
      portabello_mushroom = Plant.new(
        name: "Portabello Mushroom",
        description: "Common in Italian cooking, dense, rich portobellos lend depth to sauces and pastas and make a great meat substitute. When portabellos are young and small, they're called criminis.",
        species: mushrooms
      )
      portabello_mushroom.requirement = u_req
      portabello_mushroom.save

  # GARDENPLANT
    GardenPlant.create(plant: portabello_mushroom, user: user_2, location:"out", status: status_2)

    ########

    # PLANTS
      shiitake_mushroom = Plant.new(
        name: "Shiitake Mushroom",
        description: "They're best identified by their umbrella-shaped brown caps, which curl under ever so slightly. Fresh shiitakes have a light woodsy flavor and aroma, while their dried counterparts are more intense.",
        species: mushrooms
      )
      shiitake_mushroom.requirement = u_req
      shiitake_mushroom.save

  # GARDENPLANT
    GardenPlant.create(plant: shiitake_mushroom, user: user, location:"out", status: status)
    GardenPlant.create(plant: shiitake_mushroom, user: user_3, location:"out", status: status_3)

    ########

    # PLANTS
      oyster_mushroom = Plant.new(
        name: "Oyster Mushroom",
        description: "Like their namesakes, they're whitish in color and fan-shaped, and possess a delicate odor and flavor. Oyster mushrooms are found in many Japanese and Chinese dishes such as soups and stir-fries.",
        species: mushrooms
      )
      oyster_mushroom.requirement = u_req
      oyster_mushroom.save

  # GARDENPLANT
    GardenPlant.create(plant: oyster_mushroom, user: user, location:"out", status: status)




