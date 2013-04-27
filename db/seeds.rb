# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Create users..."
##### Users #####

admin = User.create(username: "admin", email: "linglain.julien@gmail.com", password: "admin", admin: true)
user = User.create(username: "user", email: "t@g.com", password: "user", admin: false)

puts "Create genres..."
#### Genre #####

ecchi = Genre.create(name: "Ecchi")
hentai = Genre.create(name: "Hentai")
yuri = Genre.create(name: "Yuri")

puts "Create author..."
##### Author #####

kazuto_okada  = Author.create(name: "Kazuto Okada")
amazume_ryuta = Author.create(name: "Amazume Ryuta")
kumoi_takashi = Author.create(name: "Kumoi Takashi")
fukudahda     = Author.create(name: "Fukudahda")

puts "Create ecchi..."
##### Ecchi ######

sundome = Manga.create(title: "Sundome",
                        genre_id: ecchi.id,
                        author_id: kazuto_okada.id,
                        picture: "http://i.imgur.com/y7vz3FA.jpg",
                        plot: "Hideo Aiba, lycéen, est devenu président du club de littérature. Ce club a pour but étrange de préserver la virginité de ses membres, tous des garçons, afin d’atteindre l’université dans de bonnes conditions… Ce n’est sans compter sur l’arrivée de Kurumi qui s’occupera de Hideo à sa façon… Humour et frustrations sexuelles sont au rendez-vous !")

toshiue = Manga.create(title: "Toshiue no Hito",
                       genre_id: ecchi.id,
                       author_id: amazume_ryuta.id,
                       picture: "http://i.imgur.com/pFP53uE.png",
                       plot: "Tsutomo, notre héros fait toujours le même rêve : une mystérieuse femme censée vivre dans le village de son enfance devient très entreprenante avec ses parties prénatales… Un jour Tsutomo tombe nez à nez avec une fille qui ressemble comme deux gouttes d’eau à cette femme ! Sauf qu’elle est plus petite et plus âgée… C’est qu’ici que commence Toshiue no Hito, un ecchi bien sympa et drôle !")

puts "Create hentai..."
##### Hentai ######

strange_heart = Manga.create(title: "Strange Heart",
                              genre_id: hentai.id,
                              author_id: kumoi_takashi.id,
                              picture: "http://i.imgur.com/LbA8kd4.jpg",
                              plot: "Shûji est un lycéen très proche de sa sœur, jusque là tout va bien. Mais il a le malheur d’attirer les pires catastrophes sur lui : dès qu’un ballon de foot se perd c’est pour sa gueule, dès qu’un objet tombe d’une fenêtre il se le prend… Jusqu’au jour où Karen, une fille au teint mat et étrangement peu loquace, arrive dans sa classe. Elle est comme attirée par lui et réussit à le protéger de son malheur. En échange, Shûji donnera de sa personne pour la remercier (c’est le cas de le dire !)… Ce n’est sans compter sur la venue de la sœur de Karen qui quant à elle est très bavarde et qui lui ressemble comme deux gouttes d’eau ! Gros seins et fétichismes en tout genre seront de la partie !")

honey_blonde = Manga.create(title: "Honey Blonde",
                            genre_id: hentai.id,
                            author_id: fukudahda.id,
                            picture: "http://i.imgur.com/G7raua2.jpg",
                            plot: "Erina est d’origine étrangère mais vit au Japon depuis qu’elle est toute petite. Elle est blonde et a des gros seins, ce qui ne passe pas inaperçu… Sa mère est souvent en voyage d’affaires et la laisse s’occuper seule de sa vie. Elle s’occupe avec Masaki, son ami d’enfance… Honey Blonde relate leur vie sexuelle très mouvementée !")


puts "Ok!"