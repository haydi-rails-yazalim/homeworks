@me = Array.new

age = gets.chomp
name = gets.chomp
school = gets.chomp
@me << age << name << school

@sum = (@me[1] + @me[2]).length
p @sum > 7 ? @me << "7'den büyük" : @me.clear << "7'den küçük"
