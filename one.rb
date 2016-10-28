#Birinci Odev
@me=[]
puts"How old are you?"
age=gets.chomp
@me.push(age)

puts "What is your name?"
name=gets.chomp
@me.push(name)

puts "What is your school name?"
school=gets.chomp
@me.push(school)

@sum = @me[1].length + @me[2].length

if @sum >7
	@me.push("bigger than seven")
else
	@me.clear
	@me.push("smaller than seven")
end

@me.each_with_index {|val, index| puts "[#{index}] #{val} " }
