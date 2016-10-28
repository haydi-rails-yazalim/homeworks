#Birinci Ödev
#bugcekorkmaz

puts "Yas giriniz: "
age = gets.chomp
puts "Ad giriniz: "
name = gets.chomp
puts "Okul giriniz: "
school = gets.chomp

@me = [age,name,school]
@sum = @me[1].length + @me[2].length

if @sum>7
@me.push("7'den büyük")

else
@me.pop
@me.pop
@me.pop
@me.push("7'den küçük")
end

puts ""
puts @me
