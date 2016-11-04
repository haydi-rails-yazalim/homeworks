#ikinci-ödev
#mucahiddogan

puts "Which transportation way do you prefer arriving the destination   "
puts "For bus press 1"
puts "For taxi press 2"
puts "For special car press 3"
puts "For plane press 4"
puts "or if you want to just go away press Windows(Ctrl + C) Linux(Ctrl + z)"

car_model = gets.to_i

puts "Enter The distance of destination point (m) format"
@distance = gets.to_i

s_bus = 60
s_taxi = 80
s_special = 100
s_plane = 500


@cars = []

@cars << s_bus
@cars << s_taxi
@cars << s_special
@cars << s_plane

while (car_model != -1)

	# puts "#{car_model}"
	
	if car_model == 1
		time = @distance / @cars[0]

		def model (model)
 			 puts "You selected #{model} \n\n"
		end
		model ("bus")


	elsif car_model == 2
		time = @distance / @cars[1]

		def model (model)
 			 puts "You selected #{model} \n\n"
		end
		model ("taxi")

	elsif car_model == 3
		time = @distance / @cars[2]

		def model (model)
 			 puts "You selected #{model} \n\n"
		end
		model ("special car")		

	elsif car_model == 4
		time = @distance / @cars[3]

		def model (car_model)
 			 puts "You selected #{model} \n\n"
		end
		model ("plane")		

	else 
		puts "There is no model\n\n\n"

	end

		puts "#{time} minute to arrive destination\n\n\n\n\n"
	


	puts "Which transportation way do you prefer arriving the destination"
	puts "For bus press 1"
	puts "For taxi press 2"
	puts "For special car press 3"
	puts "For plane press 4"
	puts "or if you want to just go away press Windows(Ctrl + C) Linux(Ctrl + z)"

	car_model = gets.to_i

	puts "Enter The distance of destination point"
	@distance = gets.to_i

end


