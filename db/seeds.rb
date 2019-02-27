puts "Killing all the GardenPlants"
GardenPlant.destroy_all

puts "Killing all the Plants"
Plant.destroy_all

puts "Killing all the Species"
Species.destroy_all

puts "Killing all the Categories"
Category.destroy_all
User.destroy_all

user = User.create(email: "matalon@gmail.com", password: "123456")

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

        # REQUIREMENTS
        b_req = Requirement.new(
          light: "Full Sun",
          temperature: "10 and 20",
          watering: "Mesic"
          )
        b_req.save

      butternut_squash = Plant.new(
        name: "Winter Squash ('North Georgia Candy Roaster')",
        description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
        species: squash,
      )
      butternut_squash.requirement = b_req
      butternut_squash.save

      #USER/STATUS
      status = Status.create()
      # GARDENPLANT
      GardenPlant.create(plant: butternut_squash, user: user, location:"out", status: status)

##EGGPLANT Species
      eggplant = Species.create(
        category: vegetables,
        name: "Eggplant",
        description: "All types of Eggplant")


        e_req = Requirement.create(
          light: "Full Sun",
          temperature: "20 and 26",
          watering: "Mesic"
          )

        eplant = Plant.new(
          name: "Eggplant (Solanum melongena)",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: eggplant,
          uses: "Vegetable, Suitable as Annual"
          )

        eplant.requirement = e_req
        eplant.save
        GardenPlant.create(plant: eplant, user: user, location:"out", status: status)

         eplant1 = Plant.new(
          name: "Eggplant (Solanum melongena 'Black Beauty')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: eggplant,
          uses: "Vegetable, Suitable as Annual"
          )

        eplant1.requirement = e_req
        eplant1.save
        GardenPlant.create(plant: eplant1, user: user, location:"out", status: status)


         eplant2 = Plant.new(
          name: "Eggplant (Solanum melongena 'Rosa Bianca')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: eggplant,
          uses: "Vegetable, Suitable as Annual"
          )

        eplant2.requirement = e_req
        eplant2.save
        GardenPlant.create(plant: eplant2, user: user, location:"out", status: status)

        eplant3 = Plant.new(
          name: "Eggplant (Solanum melongena 'Ichiban')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: eggplant,
          uses: "Vegetable, Suitable as Annual"
          )

        eplant3.requirement = e_req
        eplant3.save
        GardenPlant.create(plant: eplant3, user: user, location:"out", status: status)

         eplant4 = Plant.new(
          name: "Eggplant (Solanum melongena 'Little Fingers')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: eggplant,
          uses: "Vegetable, Suitable as Annual"
          )

        eplant4.requirement = e_req
        eplant4.save
        GardenPlant.create(plant: eplant4, user: user, location:"out", status: status)


        eplant5 = Plant.new(
          name: "Eggplant (Solanum melongena 'Listada de Gandia')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: eggplant,
          uses: "Vegetable, Suitable as Annual"
          )

        eplant5.requirement = e_req
        eplant5.save
        GardenPlant.create(plant: eplant5, user: user, location:"out", status: status)



        eplant6 = Plant.new(
          name: "Eggplant (Solanum melongena 'Listada de Gandia')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: eggplant,
          uses: "Vegetable, Suitable as Annual"
          )

        eplant6.requirement = e_req
        eplant6.save
        GardenPlant.create(plant: eplant6, user: user, location:"out", status: status)


        eplant7 = Plant.new(
          name: "Eggplant (Solanum melongena 'Casper')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: eggplant,
          uses: "Vegetable, Suitable as Annual"
          )

        eplant7.requirement = e_req
        eplant7.save
        GardenPlant.create(plant: eplant7, user: user, location:"out", status: status)



        eplant8 = Plant.new(
          name: "Eggplant (Solanum melongena 'Long Purple')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: eggplant,
          uses: "Vegetable, Suitable as Annual"
          )

        eplant8.requirement = e_req
        eplant8.save
        GardenPlant.create(plant: eplant8, user: user, location:"out", status: status)



        eplant9 = Plant.new(
          name: "Eggplant (Solanum melongena 'Diamond')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: eggplant,
          uses: "Vegetable, Suitable as Annual"
          )

        eplant9.requirement = e_req
        eplant9.save
        GardenPlant.create(plant: eplant9, user: user, location:"out", status: status)




        eplant10 = Plant.new(
          name: "Eggplant (Solanum melongena 'Gretel')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: eggplant,
          uses: "Vegetable, Suitable as Annual"
          )

        eplant10.requirement = e_req
        eplant10.save
        GardenPlant.create(plant: eplant10, user: user, location:"out", status: status)


##LETTUCE SPECIES
 lettuce = Species.create(
        category: vegetables,
        name: "Lettuce",
        description: "All types of Lettuce")


l_req = Requirement.create(
        light: "Full Sun",
        temperature: "18 and 25",
        watering: "Mesic")

        lettuce1 = Plant.new(
          name: "Lettuce (Lactuca sativa )",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: lettuce,
          uses: "Vegetable, Salad greens"
          )

        lettuce1.requirement = l_req
        lettuce1.save
        GardenPlant.create(plant: lettuce1, user: user, location:"out", status: status)




        lettuce2 = Plant.new(
          name: "Iceberg Lettuce (Lactuca sativa 'Miluna')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: lettuce,
          uses: "Vegetable, Salad greens"
          )

        lettuce2.requirement = l_req
        lettuce2.save
        GardenPlant.create(plant: lettuce2, user: user, location:"out", status: status)

### GINGER
ginger = Species.create(
        category: vegetables,
        name: "Ginger",
        description: "All types of Ginger")

        f_req = Requirement.create(
          light: "Partial Shade",
          temperature: "20 and 30",
          watering: "Mesic"
          )


        ginger1 = Plant.new(
          name: "Shampoo Ginger (Bitter Ginger)",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: ginger,
          uses: "Vegetable, Cut Flower Will Naturalize",
          container: "Suitable in 3 gallon or larger"
          )

        ginger1.requirement = f_req
        ginger1.save
        GardenPlant.create(plant: ginger1, user: user, location:"out", status: status)



        ginger2 = Plant.new(
          name: "Common Ginger (Zingiber officinale)",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: ginger,
          uses: "Vegetable,  Culinary Herb",
          container: "Suitable in 1 gallon
Suitable for hanging baskets
Needs excellent drainage in pots"
          )

        ginger2.requirement = f_req
        ginger2.save
        GardenPlant.create(plant: ginger2, user: user, location:"out", status: status)


        ginger3 = Plant.new(
          name: "Wild Ginger (Asarum caulescens)",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: ginger,
          uses: " Groundcover,  Culinary Herb",
          container: "Suitable in 1 gallon"
          )

        ginger3.requirement = f_req
        ginger3.save
        GardenPlant.create(plant: ginger3, user: user, location:"out", status: status)


        ginger4 = Plant.new(
          name: "Beehive Ginger (Zingiber spectabile)",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: ginger,
          uses: " Groundcover,  Culinary Herb, Cut Flower",
          container: "Suitable in 1 gallon, Suitable in 3 gallon or larger
Needs excellent drainage in pots"
          )

        ginger4.requirement = f_req
        ginger4.save
        GardenPlant.create(plant: ginger4, user: user, location:"out", status: status)


potato = Species.create(
        category: vegetables,
        name: "Potato",
        description: "All types of Potato")


        g_req = Requirement.create(
          light: "Full Sun",
          temperature: "8 and 26",
          watering: "Mesic"
          )


        potato1 = Plant.new(
          name: "Potato (Solanum tuberosum 'All Blue')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: potato,
          uses: " Vegetable ",
          container: "well-drained"
          )

        potato1.requirement = g_req
        potato1.save
        GardenPlant.create(plant: potato1, user: user, location:"out", status: status)




        potato2 = Plant.new(
          name: "Potato (Solanum tuberosum 'All Red')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: potato,
          uses: " Vegetable ",
          container: "well-drained"
          )

        potato2.requirement = g_req
        potato2.save
        GardenPlant.create(plant: potato2, user: user, location:"out", status: status)





        potato3 = Plant.new(
          name: "Potato (Solanum tuberosum 'Peter Wilcox')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: potato,
          uses: " Vegetable ",
          container: "well-drained"
          )

        potato3.requirement = g_req
        potato3.save
        GardenPlant.create(plant: potato3, user: user, location:"out", status: status)



        potato4 = Plant.new(
          name: "Potato (Solanum tuberosum 'Peter Wilcox')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: potato,
          uses: " Vegetable ",
          container: "well-drained"
          )

        potato4.requirement = g_req
        potato4.save
        GardenPlant.create(plant: potato4, user: user, location:"out", status: status)






zucchini = Species.create(
        category: vegetables,
        name: "Zucchini",
        description: "All types of Zucchini")


        h_req = Requirement.create(
          light: "Full Sun",
          temperature: "15 and 25",
          watering: "Mesic"
          )



        zucchini1 = Plant.new(
          name: "Zucchini (Cucurbita pepo 'Dark Green Zucchini')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: zucchini ,
          uses: " Vegetable ",
          container: "well-drained"
          )


        zucchini1.requirement = h_req
        zucchini1.save
        GardenPlant.create(plant: zucchini1, user: user, location:"out", status: status)





        zucchini2 = Plant.new(
          name: "Zucchini (Cucurbita pepo 'Black Beauty')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: zucchini ,
          uses: " Vegetable "
          )


        zucchini2.requirement = h_req
        zucchini2.save
        GardenPlant.create(plant: zucchini2, user: user, location:"out", status: status)




        zucchini3 = Plant.new(
          name: "Zucchini (Cucurbita pepo 'Costata Romanesco')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: zucchini ,
          uses: " Vegetable "
          )


        zucchini3.requirement = h_req
        zucchini3.save
        GardenPlant.create(plant: zucchini3, user: user, location:"out", status: status)




        zucchini4 = Plant.new(
          name: "Zucchini (Cucurbita pepo 'Gold Rush')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: zucchini ,
          uses: " Vegetable "
          )


        zucchini4.requirement = h_req
        zucchini4.save
        GardenPlant.create(plant: zucchini4, user: user, location:"out", status: status)







cucumber = Species.create(
        category: vegetables,
        name: "Cucumber",
        description: "All types of Cucumber")


        i_req = Requirement.create(
          light: "Full Sun",
          temperature: "15 and 32",
          watering: "Mesic"
          )



        cucumber1 = Plant.new(
          name: "Cucumber (Cucumis sativus 'Spacemaster')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: cucumber ,
          uses: " Vegetable ",
          container: " Not suitable for containers"
          )


       cucumber1.requirement = i_req
       cucumber1.save
      GardenPlant.create(plant: cucumber1, user: user, location:"out", status: status)








        cucumber2 = Plant.new(
          name: "Cucumber (Cucumis sativus 'National Pickling')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: cucumber ,
          uses: " Vegetable ",
          container: " Not suitable for containers"
          )


       cucumber2.requirement = i_req
       cucumber2.save
      GardenPlant.create(plant: cucumber2, user: user, location:"out", status: status)





        cucumber3 = Plant.new(
          name: "Cucumber (Cucumis sativus 'White Wonder')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: cucumber ,
          uses: " Vegetable ",
          container: " Not suitable for containers"
          )


       cucumber3.requirement = i_req
       cucumber3.save
      GardenPlant.create(plant: cucumber3, user: user, location:"out", status: status)





        cucumber4 = Plant.new(
          name: "Cucumber (Cucumis sativus 'Burpless')",
          description: " It is the sweetest winter squash with a thick, bright orange, moist flesh that hides very few seeds. The squash is an elongated pear shape with a thin, pale tan skin that is easy to peel. They usually weigh between 2 and 3 pounds.",
          species: cucumber ,
          uses: " Vegetable ",
          container: " Not suitable for containers"


       cucumber4.requirement = i_req
       cucumber4.save
      GardenPlant.create(plant: cucumber4, user: user, location:"out", status: status)








# # CATEGORY
puts "creating flowers category"

flowers = Category.create!(
  name: "Flowers",
  description: "Variety of flowers suitable for your garden or inside of your home.")

#   # SPECIES
    jasmin = Species.create!(
      category: flowers,
      name: "Jasmin",
      description: "All types of Jasmin"
    )
      # REQUIREMENTS
        a_req = Requirement.create(
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

     c_req = Requirement.new(
          light: "Full Sun",
          temperature: "15 and 25",
          watering: "Mesic"
          )

     jasmine = Plant.new(
      name: "Flowering Tobacco (Nicotiana alata 'Jasmine')",
      description: "Lilium lancifolium is an Asian species of lily, native to China, Japan, Korea, and the Russian Far East. It is widely planted as an ornamental because of its showy orange-and-black flowers, and has become naturalized in numerous scattered locations in eastern North America.",
      species: jasmin
      )
     jasmine.requirement = c_req
    GardenPlant.create(plant: jasmine, user: user, location:"in", status: status)

      oryza = Plant.new(
      name: "Oryza 'Jasmine",
      description: "Lilium lancifolium is an Asian species of lily, native to China, Japan, Korea, and the Russian Far East. It is widely planted as an ornamental because of its showy orange-and-black flowers, and has become naturalized in numerous scattered locations in eastern North America.",
      species: jasmin,
      uses: "Suitable as Annual"
      )

      oryza.requirement = c_req
      oryza.save
      GardenPlant.create(plant: oryza, user: user, location:"in", status: status)

      d_req = Requirement.create(
        light: "Partial Shade",
        temperature: "13 and 20",
        watering: "Mesic")

      jessamine = Plant.new(
      name: "  Jessamine (Gelsemium Jasmine Duet)",
      description: "Lilium lancifolium is an Asian species of lily, native to China, Japan, Korea, and the Russian Far East. It is widely planted as an ornamental because of its showy orange-and-black flowers, and has become naturalized in numerous scattered locations in eastern North America.",
      species: jasmin,
      uses: "Suitable as Annual"
      )
      jessamine.requirement = d_req
      jessamine.save
      GardenPlant.create(plant: jessamine, user: user, location:"in", status: status)


      ladys = Plant.new(
      name: "Lady's Eardrops (Fuchsia 'Jasmine')",
      description: "Lilium lancifolium is an Asian species of lily, native to China, Japan, Korea, and the Russian Far East. It is widely planted as an ornamental because of its showy orange-and-black flowers, and has become naturalized in numerous scattered locations in eastern North America.",
      species: jasmin,
      uses: "Suitable as Annual"
      )
      ladys.requirement = d_req
      ladys.save
      GardenPlant.create(plant: ladys, user: user, location:"in", status: status)


      jnights = Plant.new(
      name: "  Daylily (Hemerocallis 'Jasmine Nights')",
      description: "Lilium lancifolium is an Asian species of lily, native to China, Japan, Korea, and the Russian Far East. It is widely planted as an ornamental because of its showy orange-and-black flowers, and has become naturalized in numerous scattered locations in eastern North America.",
      species: jasmin,
      uses: "Suitable as Annual"
      )
      jnights.requirement = d_req
      jnights.save
      GardenPlant.create(plant: jnights, user: user, location:"in", status: status)



      jemma = Plant.new(
      name: "Daylily (Hemerocallis 'Jasmine Emma')",
      description: "Lilium lancifolium is an Asian species of lily, native to China, Japan, Korea, and the Russian Far East. It is widely planted as an ornamental because of its showy orange-and-black flowers, and has become naturalized in numerous scattered locations in eastern North America.",
      species: jasmin,
      uses: "Suitable as Annual"
      )
      jemma.requirement = d_req
      jemma.save
      GardenPlant.create(plant: jemma, user: user, location:"in", status: status)



      jbearded = Plant.new(
      name: " Tall Bearded Iris (Iris 'Jasmine How')",
      description: "Lilium lancifolium is an Asian species of lily, native to China, Japan, Korea, and the Russian Far East. It is widely planted as an ornamental because of its showy orange-and-black flowers, and has become naturalized in numerous scattered locations in eastern North America.",
      species: jasmin,
      uses: "Suitable as Annual"
      )
      jbearded.requirement = d_req
      jbearded.save
      GardenPlant.create(plant: jbearded, user: user, location:"in", status: status)


