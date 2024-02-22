# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database"

User.destroy_all
# Bar.destroy_all

User.create(name: 'Alexis', description: 'oui', github_name: 'AlexisArias')
User.create(name: 'Bertrand de Bausset', description: 'Grand, froid, antipathique', github_name: 'bertranddebausset')
User.create(name: 'Benjamin', description: 'Parfait', github_name: 'BetterCallBen')
User.create(name: 'Chloe', description: 'moi c’est chloé, globalement frustrée mais j’aime bien chanter et rigoler, mais frustrée, globalement.', github_name: 'chloegregor')
User.create(name: 'Emre', description: 'Genius, billionaire, playboy, philanthropist', github_name: 'Emre-Alk')
User.create(name: 'Mylène', description: 'boomeuse, kinkinette, rigolote en PLS', github_name: 'Milhaine')
User.create(name: 'Alex', description: 'Sudiste teubé, danseur de polka qui aime manger des bananes fluo', github_name: 'AlexandreMrl')
User.create(name: 'Sam', description: 'Gourou de Figma et maître du design UI, forgeant des systèmes de design à la frontière de l’art et de la fonction Ps: Modeste', github_name: 'samuelboulery')
User.create(name: 'Quentin', description: 'Chauve illuminé', github_name: 'QuentinBonnafet')
User.create(name: 'Jamal', description: 'moi c\'est Jamal createur de JamalScript (1er language backend qui s\'ecrit de droite a gauche)', github_name: 'Jamdu69')
User.create(name: 'Robin', description: 'Explorateur de Rails, adopteur de scaffold', github_name: 'Nojann')
User.create(name: 'Bastin', description: 'Liverpuldien dans l\'âme confondant sa salle de bain avec l\'abbey road studio', github_name: 'Basgerrard')
User.create(name: 'Baptiste', description: 'Probablement plus calé que Yanis sur des sujets obscurs de nerds. J\'ai pas d\'amis. Help', github_name: 'Morriwan')
User.create(name: 'Vincent', description: 'ancien batcheur from west', github_name: 'vincentLEWAGON')
User.create(name: 'Romain Le Grand Manitou', description: 'Tyran de Bertrand de Bausset', github_name: 'RomainSTANKE')
User.create(name: 'Valentine', description: 'Couteau-suisse (rapport à Dague, lol). Dresseuse d\'ours de ville: globalement jamais à sa place... Mais pourtant partout.', github_name: 'ValentineDague')
User.create(name: 'Lynda', description: 'Je jongle tellement avec le code que parfois, même mon ordinateur me regarde bizarrement. Entraînement intensif pour battre des records de caféine', github_name: 'LyndaMER')
User.create(name: 'Maxandre', description: 'aime le Ricard.', github_name: 'Wanegen')
puts "Users created"

Bar.create(name: "Barabar", address: "Rue de Quinquin", user_id: User.first.id)
Bar.create(name: "Chez Dédé", address: "Au coinde la rue", user_id: User.second.id)
Bar.create(name: "Ze Bar", address: "Address", user_id: User.last.id)
puts "Bars created"

puts "Finished"