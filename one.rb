puts """Lütfen Sırasıyla
        Yaşınızı
        Adınızı ve
        Okulunuzu giriniz.
        Örnek 20 (Enter) Abdullah (Enter) KTU(Enter)
Giriş:"""
age = gets.chomp.to_i
name = gets.chomp.to_s
scholl = gets.chomp.to_s
me = [age,name,scholl]
sum = me[1].length + me[2].length
if sum > 7
  me.push("7'den Buyuk")
else
  me.clear
  me.push("7'den küçük")
end
i=0
puts "\nÇıkış:\n"
while i <= me.length-1 do
  puts me[i]
  i+=1
end

