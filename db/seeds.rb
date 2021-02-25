# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bird.destroy_all
Tree.destroy_all



tree1 = Tree.create(name: 'Oak', size: 100)
tree2 = Tree.create(name: 'Pine', size: 60)


Bird.create(name: 'Eagle', color: 'Golden', tree: tree1)
Bird.create(name: 'Seagull', color: 'White', tree: tree2)
Bird.create(name: 'Raven', color: 'Black', tree: tree2)

