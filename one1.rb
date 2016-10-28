 #First Homework
 #my-github-username = mucahiddogan

@me = ["age", "name", "school"]

puts "Enter your name: "
	name = gets.chomp
	puts "\n"

puts "Enter the name of school: "
	school = gets.chomp
	puts "\n"

puts "How old are u?"
	age = gets.chomp
	puts "\n"

sum = name.length + school.length


if sum > 7
	@me << "Sum is bigger than 7"
	
	

else
	@me.clear
	@me.push "Sum is smaller than 7"


end

puts @me

#For not exiting automatically the program
something = gets.chomp
