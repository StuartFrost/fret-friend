# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
PracticeLog.delete_all
PracticeLog.create!(:date => "2016/07/26", :time_from => "10:00", :time_to => "11:00", :practiced => "Modes in a key, Modes in a position, Hey Joe")
PracticeLog.create!(:date => "2016/07/26", :time_from => "19:00", :time_to => "21:30", :practiced => "Playing in 5/4, Blue in E, Fingerpicking")
PracticeLog.create!(:date => "2016/07/30", :time_from => "15:30", :time_to => "17:00", :practiced => "There is none like you, connecting modes")
