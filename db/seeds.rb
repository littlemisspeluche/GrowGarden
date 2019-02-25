puts "Killing all the Plants"
Plant.destroy_all

puts "Killing all the Species"
Species.destroy_all

puts "Killing all the Categories"
Category.destroy_all



# CATEGORY
puts "creating fruits category"
  fruits = Category.create!(
    name: "Fruits",
    description: "Vegetables can be eaten either raw or cooked and play an important role in human nutrition, being mostly low in fat and carbohydrates, but high in vitamins, minerals and dietary fiber. Many nutritionists encourage people to consume plenty of fruit and vegetables, five or more portions a day often being recommended.")

    # SPECIES
      tomatoes = Species.create!(
        category: fruits,
        name: "Tomatoes",
        description: "All types of Tomatoes"
      )
      # PLANTS
        cherry_tomato = Plant.create!(
          name: "Cherry Tomato",
          description: "The cherry tomato is a type of small round tomato believed to be an intermediate genetic admixture between wild currant-type tomatoes and domesticated garden tomatoes.",
          species: tomatoes
        )

        cherokee_purple = Plant.create!(
          name: "Cherokee Purple",
          description: "Cherokee Purple is the name of a cultivar of tomato that develops a fruit with a deep, dusky-rose color while maintaining a somewhat greenish hue near the stem when mature for eating.",
          species: tomatoes
        )

        san_marzano = Plant.create!(
          name: "San Marzano",
          description: "San Marzano tomatoes are thinner and more pointed. The flesh is much thicker with fewer seeds, and the taste is stronger, sweeter and less acidic.",
          species: tomatoes
        )

    # SPECIES
      apples = Species.create!(
        category: fruits,
        name: "Apples",
        description: "All types of Apples"
      )

      # PLANTS
        red_delicious = Plant.create!(
          name: "Red Delicious",
          description: "Heart-shaped Red Delicious features a bright red and sometimes striped skin. Renowned for its crunchy texture and mildly sweet flavor, this tasty apple shines in cool, crisp salads.",
          species: apples
        )

         granny_smiths = Plant.create!(
          name: "Granny Smiths",
          description: "Delicious tart flavor and pleasing crunch, Granny Smiths are great in all kinds of recipes, such as salads, sauces, baking, freezing, and more.",
          species: apples
        )

        honeycrisp = Plant.create!(
          name: "Honeycrisp",
          description: "Honeycrisp apples burst with juice with every bite, and they are also a delicious addition to salads, pies, sauces, and baked goods.",
          species: apples
        )

    # SPECIES
      strawberries = Species.create!(
        category: fruits,
        name: "Strawberries",
        description: "All types of Strawberries"
      )
        # PLANTS
        allstars = Plant.create!(
          name: "Allstars",
          description: "Allstars are generally paler than other varieties. They grow big and firm, though, and have plenty of sweetness and juice. They are the kind of berries that are particularly great for slicing and using in salads.",
          species: strawberries
        )

        ventana = Plant.create!(
          name: "Ventana",
          description: "Ventana strawberries are bright red fruit, slightly lighter in color, a good flavor, standard shape, and large size with excellent fruit quality.",
          species: strawberries
        )

        alpine = Plant.create!(
          name: "Alpine",
          description: "Alpine strawberries (fraises des bois in French) are a tiny and exquisitely sweet wild strawberry from France.",
          species: strawberries
        )

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
    # PLANTS
      butternut_squash = Plant.create!(
        name: "Butternut Squash",
        description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
        species: squash
      )

       acorn_squash = Plant.create!(
        name: "Acorn Squash",
        description: "Acorn squash are round, with even groves around the entire squash and moist, sweet, tender flesh. The skin is mostly dark green, with occasional splotches of orange and yellow and the flesh is a slightly yellowish pumpkin orange. They tend to weigh between 12 ounces and 2 pounds.",
        species: squash
      )

  # SPECIES
    cabbage = Species.create!(
      category: vegetables,
      name: "Cabbage",
      description: "All types of Cabbage"
    )

    # PLANTS
      cannonball_cabbage = Plant.create!(
        name: "Cannonball Cabbage",
        description: "More commonly known as green cabbage, the cannonball cabbage is one of the most popular cabbage varieties. It is so named for the way its leaves wound tightly over one another in a dense, compact fashion; with the final product resembling a cannonball.",
        species: cabbage
      )

       bok_choy = Plant.create!(
        name: "Bok Choy",
        description: "bok choy, bai cai or pak choi but they all really mean the same thing: a dark, leafy vegetable with slender stems that's more reminiscent of Swiss chard or spinach than it is a cannonball cabbage.",
        species: cabbage
      )
  # SPECIES
    mushrooms = Species.create!(
      category: vegetables,
      name: "Mushrooms",
      description: "All types of Mushrooms"
    )

    # PLANTS
      portabello_mushroom = Plant.create!(
        name: "Portabello Mushroom",
        description: "Common in Italian cooking, dense, rich portobellos lend depth to sauces and pastas and make a great meat substitute. When portabellos are young and small, they're called criminis.",
        species: mushrooms
      )

      shiitake_mushroom = Plant.create!(
        name: "Shiitake Mushroom",
        description: "They're best identified by their umbrella-shaped brown caps, which curl under ever so slightly. Fresh shiitakes have a light woodsy flavor and aroma, while their dried counterparts are more intense.",
        species: mushrooms
      )

      oyster_mushroom = Plant.create!(
        name: "Oyster Mushroom",
        description: "Like their namesakes, they're whitish in color and fan-shaped, and possess a delicate odor and flavor. Oyster mushrooms are found in many Japanese and Chinese dishes such as soups and stir-fries.",
        species: mushrooms
      )


# CATEGORY
puts "creating herbs category"

herbs = Category.create!(
  name: "Herbs",
  description: "Variety of herbs used for culinary purposes, herbal teas, medical purposes and even spiritual purposes.")

  # SPECIES
    mint = Species.create!(
      category: herbs,
      name: "Mint",
      description: "All types of Mint"
    )

    # PLANTS
      peppermint = Plant.create!(
        name: "Peppermint",
        description: "Peppermint is a hybrid mint, a cross between watermint and spearmint.",
        species: mint
      )

      spearmint = Plant.create!(
        name: "Spearmint",
        description: "Spearmint, also known as garden mint, common mint, lamb mint and mackerel mint, is a species of mint native to the Balkan Peninsula and Turkey. I",
        species: mint
      )

  # SPECIES
    basil = Species.create!(
      category: herbs,
      name: "Basil",
      description: "All types of Basil"
    )

    # PLANTS
      sweet_basil = Plant.create!(
        name: "Sweet Basil",
        description: "Sweet Basil is your traditional style Basil that most of us use in our tomato sauces, pesto, in soups, and I use it a lot to make my own Italian seasonings.",
        species: basil
      )

      genovese_basil = Plant.create!(
        name: "Genovese Basil",
        description: " Genovese is flatter and pointier than traditional sweet basil. It also has a more aromatic flavor.",
        species: basil
      )

# CATEGORY
puts "creating flowers category"

flowers = Category.create!(
  name: "Flowers",
  description: "Variety of flowers suitable for your garden or inside of your home.")

  # SPECIES
    lily = Species.create!(
      category: flowers,
      name: "Lily",
      description: "All types of Lily"
    )

    # PLANTS
      tiger_lily = Plant.create!(
        name: "Tiger Lily",
        description: "Lilium lancifolium is an Asian species of lily, native to China, Japan, Korea, and the Russian Far East. It is widely planted as an ornamental because of its showy orange-and-black flowers, and has become naturalized in numerous scattered locations in eastern North America.",
        species: lily
      )

      madona_lily = Plant.create!(
        name: "Madonna Lily",
        description: "Lilium candidum, the Madonna lily, is a plant in the true lily family. It is native to the Balkans and Middle East, and naturalized in other parts of Europe, including France, Italy, and Ukraine, and in North Africa, the Canary Islands, Mexico, and other regions.",
        species: lily
      )

      wood_lily = Plant.create!(
        name: "Wood Lily",
        description: "Lilium philadelphicum, also known as the wood lily, Philadelphia lily, prairie lily or western red lily, is a perennial species of lily native to North America.",
        species: lily
      )

  # SPECIES
    orchids = Species.create!(
      category: flowers,
      name: "Orchids",
      description: "All types of Orchids"
    )

    # PLANTS
      cattleya_orchids = Plant.create!(
        name: "Cattleya orchids",
        description: "Cattleya is a genus of orchids from Costa Rica south to Argentina.",
        species: orchids
      )

      boat_orchid = Plant.create!(
        name: "Boat orchid",
        description: "Cymbidium, commonly known as boat orchids, is a genus of evergreen flowering plants in the orchid family Orchidaceae.",
        species: orchids
      )

