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
john          = Author.create(name: "John K. Pe-ta")
shunjou       = Author.create(name: "Shunjou Shuusuke")
yanagi        = Author.create(name: "Yanagi Masashi")
mikuni        = Author.create(name: "MIKUNI Hajime")
multi         = Author.create(name: "Multi auteurs")

puts "Create yuri..."
##### Yuri ######

gokujo = Manga.create(title: "Gokujou Drops",
                      genre_id: yuri.id,
                      author_id: mikuni.id,
                      picture: "http://i.imgur.com/XnEA37s.jpg",
                      plot: "Komari Maezono vient d’une famille moyenne et entre dans un lycée prestigieux. Elle décide de rester y vivre et son seul choix est le dortoir Haraiso no Yakata, celui où vit les filles les plus riches… Mais pour cela, elle va devoir devenir la servante de la mystérieuse Himemiya Yukio qui lui réserve de bien jolies surprises…Série complète en 3 tomes.")

tsubomi = Manga.create(title: "Tsubomi",
                       genre_id: yuri.id,
                       author_id: multi.id,
                       picture: "http://i.imgur.com/mv5KO6T.png",
                       plot: "Tsubomi est un magazine trimestriel regroupant plusieurs auteurs autour du yuri et du shôjo-ai")

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

super_monzetsu = Manga.create(title: "Super Moneztsu Mega Bitch",
                              genre_id: hentai.id,
                              author_id: john.id,
                              picture: "http://i.imgur.com/aaprNF5.jpg",
                              plot: "Les travaux de John K. Pe-ta ont tous un point commun : mettre en scène des comportements sexuels totalement impossibles (comme faire l’amour par l’urètre…) dans des situations improbables… Vous voilà prévenus")

muchi_muchi = Manga.create(title: "Muchi Muchi !! Monzetsu Fever Plus",
                           genre_id: hentai.id,
                           author_id: john.id,
                           picture: "http://i.imgur.com/Q8m9xoQ.jpg",
                           plot: "Les travaux de John K. Pe-ta ont tous un point commun : mettre en scène des comportements sexuels totalement impossibles (comme faire l’amour par l’urètre…) dans des situations improbables… Vous voilà prévenus")

nee = Manga.create(title: "Nee, Mô Sukoshi Dake",
                           genre_id: hentai.id,
                           author_id: shunjou.id,
                           picture: "http://uppix.net/3/e/5/2605d4ab8f35db978b16ae33e9c31.jpg",
                           plot: "Un recueil de neuf histoires érotiques entre bibliothèque et local de sport, étudiantes et enseignantes, au boulot ou chez soi…il y en aura pour tous les goûts !")

love_and_devil = Manga.create(title: "Love and Devil",
                              genre_id: hentai.id,
                              author_id: yanagi.id,
                              picture: "http://i.imgur.com/swfcZjv.jpg",
                              plot: "Il y a deux endroit où notre héros, Masato, ne peut pas aller : à l’université (car il a lamentablement échoué au concours d’entrée), et dans la culotte de Megumi (elle ne veut pas qu’il reste un rônin* toute sa vie !). C’est alors qu’arrive Maria, une jeune démone pour le moins sexy qui est prête à tout en échange… de son âme !")

puts "Ok!"