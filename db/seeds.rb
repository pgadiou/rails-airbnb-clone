# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Service.destroy_all
User.destroy_all

user_1 = User.create(
  email: "azerty@gmail.com",
  password: "12345678",
  first_name: "Thomas",
  last_name: "Quélin"
)
user_2 = User.create(
  email: "tyuiop@gmail.com",
  password: "12345678",
  first_name: "Philippe",
  last_name: "Badiou"
)
user_3 = User.create(
  email: "wxcvbn@gmail.com",
  password: "12345678",
  first_name: "Damien",
  last_name: "Borjesson"
)


chef = Service.new(name: "Auguste le Cuistot",
                  description: "Fort d'une formation culinaire aux cotés de grands chefs de la région Lyonnaise, je saurai vous faire faire partager ma passion de la pâtisserie dans une ambiance conviviale!",
                  category: "cuisine",
                  location: "Poitiers",
                  distance: "5",
                  price: "50")
chef.user = user_1
chef.remote_photo_url = "http://res.cloudinary.com/damienborjesson/image/upload/v1511950714/chef_ftd1be.jpg"
chef.save!


cracheur_feu = Service.new(name: "Robert le cracheur",
                            description: "Je suis Eric, artiste de cirque professionnel passionné de spectacles nocturnes.Je suis spécialisé en manipulation de feu, pyrotechnie et jonglerie graphique LED.",
                            category: "cracheur de feu",
                            location: "Nantes",
                            distance: "10",
                            price:"100")
cracheur_feu.user = user_1
cracheur_feu.remote_photo_url = "http://res.cloudinary.com/damienborjesson/image/upload/v1511950714/cracheur_feu_nwahqv.jpg"
cracheur_feu.save!


strip = Service.new(name: "Kevin Strip",
                    description: "Je suis néo stripteaseur/performer professionnel basé à Nantes, jeune danseur de 35 ans, originaire d’Andalousie",
                    category: "chippendale",
                    location: "Paris",
                    distance: "4",
                    price:"50")
strip.user = user_1
strip.remote_photo_url = "http://res.cloudinary.com/damienborjesson/image/upload/v1511950714/chippendale_rqqosx.jpg"
strip.save!


developpeur = Service.new(name: "Gik, développeur full stack",
                          description: "Je suis développeur full stack et me suis formé au Wagon, le 1er Boot Camp au monde! Je saurai vous faire découvrir la magie du code, et vous faire partager ma passion du Ruby, Javascript et autres HTML/CSS!",
                          category: "développeur",
                          location: "Dijon",
                          distance: "6",
                          price:"70")
developpeur.user = user_1
developpeur.remote_photo_url = "http://res.cloudinary.com/damienborjesson/image/upload/v1511950714/developpeur_ng4xo3.jpg"
developpeur.save!


humoriste = Service.new(name: "Caroline humoriste",
                        description: "chanteuse et humoriste, me déplace à votre domicile pour animer un mariage, une fête de famille, un anniversaire ou une soirée entre amis.",
                        category: "humoriste",
                        location: "Avignon",
                        distance: "4",
                        price:"60")
humoriste.user = user_1
humoriste.remote_photo_url = "http://res.cloudinary.com/damienborjesson/image/upload/v1511950714/humoriste_bkygzj.jpg"
humoriste.save!


jongleur = Service.new(name: "Charles le jongleur",
                      description: "Je vous initierai à lajonglerie. Mes ateliers comprennent des exercices ludiques et facilement réalisables.",
                      category: "jongleur",
                      location: "Avignon",
                      distance: "7",
                      price:"50")
jongleur.user = user_1
jongleur.remote_photo_url = "http://res.cloudinary.com/damienborjesson/image/upload/v1511950714/jongleur_p72osh.jpg"
jongleur.save!


lanceur_nains = Service.new(name: "Joe",
                            description: "Expert en lancers de nains depuis plus de 15 ans, je saurai vous faire découvrir les joies de ce loisir méconnu mais jouissif.Je peux me déplacer avec mon nain ou utiliser un nain mis à disposition par vos soins.",
                            category: "lanceur de nains",
                            location: "Lille",
                            distance: "6",
                            price:"70")
lanceur_nains.user = user_1
lanceur_nains.remote_photo_url = "http://res.cloudinary.com/damienborjesson/image/upload/v1511950714/lancer_nain_hsmqkl.jpg"
lanceur_nains.save!


lanceur_couteaux = Service.new(name: "Bob knife killer",
                              description: "Laurent Mathieu, je lance des haches et des couteaux depuis huit ans. Je vais participer à la coupe du monde de ma discipline en Angleterre pendant le mois d’août 2018. Je vous propose une initiation à ma discipline chez vous, pendant une soirée.",
                              category: "lanceur de couteaux",
                              location: "Strasbourg",
                              distance: "5",
                              price:"40")
lanceur_couteaux.user = user_1
lanceur_couteaux.remote_photo_url = "http://res.cloudinary.com/damienborjesson/image/upload/v1511950714/Lanceur_couteaux_g5jnto.jpg"
lanceur_couteaux.save!


magicien = Service.new(name: "Magic David",
                      description: "Des numéros   visuels, modernes  et pleins d'humour qui  plairont aussi  aux adultes.",
                      category: "magicien",
                      location: "Monaco",
                      distance: "5",
                      price:"50")
magicien.user = user_1
magicien.remote_photo_url = "http://res.cloudinary.com/damienborjesson/image/upload/v1511950714/magicien_do3foi.jpg"
magicien.save!



masseur = Service.new(name: "Xuan",
                      description: "Masseur agréé et certifié, je vous propose une gamme de massages du plus doux au plus tonique. Prenant en compte vos besoins, vos souhaits, je vous proposerai un massage totalement sur mesure.",
                      category: "masseur",
                      location: "Marseille",
                      distance: "6",
                      price:"30")
masseur.user = user_1
masseur.remote_photo_url = "http://res.cloudinary.com/damienborjesson/image/upload/v1511950714/massage_dc4ipr.jpg"
masseur.save!


mixologiste = Service.new(name: "Alcoolo",
                         description: "Que ce soit pour un mixologue à domicile, un service de bar  à cocktails corporatif, ou de la consultation/création de cocktails nous avons la solution pour vous.",
                          category: "mixologiste",
                          location: "Lyon",
                          distance: "5",
                          price:"50")
mixologiste.user = user_1
mixologiste.remote_photo_url = "http://res.cloudinary.com/damienborjesson/image/upload/v1511950715/mixologist_omwyb0.jpg"
mixologiste.save!





montreur_ours = Service.new(name: "Mike and my bears",
                            description: "Je fais partie de cette lignée de passionnés, et je saurai vous faire découvrir les joies du dressage d’ours, pour vous convaincre que ce sont nos amis!",
                            category: "montreur d'ours",
                            location: "Clermont",
                            distance: "6",
                            price:"100")
montreur_ours.user = user_1
montreur_ours.remote_photo_url = "http://res.cloudinary.com/damienborjesson/image/upload/v1511950716/montreur_ours_bazfxz.png"
montreur_ours.save!



oenologue = Service.new(name: "Victor",
                        description: "Je vous propose des cours thématiques et des initiations à la Dégustation.",
                        category: "oenologue",
                        location: "Paris",
                        distance: "5",
                        price:"60")
oenologue.user = user_1
oenologue.remote_photo_url = "http://res.cloudinary.com/damienborjesson/image/upload/v1511950715/oenologue_r3wso9.jpg"
oenologue.save!



quiz_master = Service.new(name: "Jean-Pierre",
                          description: "Doté d’une expérience de 15 ans dans l’animation de quiz dans les pubs londoniens, je saurai animer une soirée de folies, à votre convenance, sur l’ensemble des thématiques, avec du fun!",
                          category: "quizmaster",
                          location: "Toulouse",
                          distance: "5",
                          price:"50")
quiz_master.user = user_2
quiz_master.remote_photo_url = "http://res.cloudinary.com/damienborjesson/image/upload/v1511950715/quizmaster_f3jimg.jpg"
quiz_master.save!



