age = input("Yasiniz? ")
name = input("Adiniz? ")
school = input("Okulunuz? ")

me = [age,name,school]
sum = int(me[0])+ len(me[1]) + len(me[2])  #İşlem hatası var. Dökümantasyonda sadece name ve school'un toplamını istiyor.

if sum > 7:
	me.append("7'den büyük")
else:
	del me[:]
	me.append("7'den küçük")
print (me)