<<<<<<< HEAD
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
=======
@me = Array.new

age = gets.chomp
name = gets.chomp
school = gets.chomp
@me << age << name << school

@sum = (@me[1] + @me[2]).length
p @sum > 7 ? @me << "7'den büyük" : @me.clear << "7'den küçük"
>>>>>>> 3c0c209c4fffdea902ee4be6a36a23b3a7a6aadf
