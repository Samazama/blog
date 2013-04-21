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

kazuto_okada = Author.create(name: "Kazuto Okada")
amazume_ryuta = Author.create(name: "Amazume Ryuta")

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

puts "Ok!"