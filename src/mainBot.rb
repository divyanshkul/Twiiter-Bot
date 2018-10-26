puts
puts "You can use me by two ways (also enter your choice): \n\t1. By giving me the number of your tweets, their text and the time delay between each (manual mode) \n\t2. By providing me with a json file that I would read and tweet it out according to the delay given by you, (automative mode)"
choice = gets.to_i
case choice
when 1
	load 'manualBot.rb'
when 2
	load 'jsonBot.rb'
end


