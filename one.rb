puts """Lütfen Sırasıyla
        Yaşınızı
        Adınızı ve
        Okulunuzu giriniz.
        Örnek 20 (Enter) Abdullah (Enter) KTU(Enter)
Giriş:

"""
print "Yaşınız:"
age = gets().chomp.to_i
print "Adınız:"
name = gets.chomp
print "Okulunuz:"
scholl = gets.chomp
me = [age,name,scholl]
sum = me[1].length + me[2].length
if sum > 7
  me.push("7'den Buyuk")
else
  me.clear
  me.push("7'den küçük")
end
puts "\nÇıkış:\n"
print me
