# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Jour.destroy_all

j = Jour.new
fl = FutureLog.new
ent = FutureLogEntry.new

j.title = "My Journal"
j.future_log = fl
j.save

ent.content = "paint the house"
ent.future_log = fl
ent.save

ent2 = FutureLogEntry.new
ent2.content = "change oil in car"
ent2.future_log = fl
ent2.save

ent3 = FutureLogEntry.new
ent3.content = "fix the cabinets"
ent3.future_log = fl
ent3.save

fl.description = "my future log"
fl.save
