#Birinci Ödev
#maxmin099
puts "Age giriniz..."
@age = gets.chomp
puts "Name giriniz..."
@name = gets.chomp
puts "School giriniz..."
@school = gets.chomp
@me=[@age,@name,@school]
@sum = @me[1].length + @me[2].length
if @sum>7
 @me.push("7'den büyük")
else
 @me=Array.new(0)
 @me[0]=("7'den küçük VEYA EŞİT")
end
puts
puts "Name ve School'un harf sayısı toplamı:#{@sum}"
puts "Dizinin Çıktısı:"
puts
puts @me
