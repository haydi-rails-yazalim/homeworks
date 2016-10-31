#HANOI KULELERİ (chomp,to_i,reverse,each,<<,if,while kullanarak)
#two.rb from abdullahvelioglu

kule1 = []
kule2 = []
kule3 = []

puts "Kaç tane disk ile oynamak istersiniz?"
diskler = gets.chomp.to_i

(1..diskler).each do |disk|
  kule1 << disk
end
son = kule1.reverse
kule1.reverse!
tasinan = 0

while true
  puts """Şuan kulelerde bulunan diskler aşağıdaki gibidir.
          Not:Her zaman büyük sayının(disk) üstünde küçük sayı(disk) vardır:"""
  puts "Kule 1: #{kule1}"
  puts "Kule 2: #{kule2}"
  puts "Kule 3: #{kule3}"

  puts "Hangi kuledeki diskin yerini değiştirmek istersiniz?:"
  secilen_kule = gets.chomp.to_i
  puts "#{secilen_kule}. kuledeki diski hangi kuleye taşımak istersiniz?:"
  hedef_kule = gets.chomp.to_i

  if secilen_kule == 1 && hedef_kule == 1
    puts "Aynı kuleye aynı diski tekrar koyamazsınız."
    puts ""
  end
  if secilen_kule == 1 && hedef_kule == 2
    if kule2.length == 0 || kule1.last < kule2.last
      kule2 << kule1.pop
      tasinan += 1
    else
      puts "Geçersiz hareket. Daha küçük diskin üstünde büyük bir disk yer alamaz."
      puts "Tekrar dene!"
      puts ""
    end
  end
  if secilen_kule == 1 && hedef_kule == 3
    if kule3.length == 0 || kule1.last < kule3.last
      kule3 << kule1.pop
      tasinan += 1
    else
      puts "Geçersiz hareket. Daha küçük diskin üstünde büyük bir disk yer alamaz."
      puts "Tekrar dene!"
      puts ""
    end
  end

  if secilen_kule == 2 && hedef_kule == 2
    puts "Aynı kuleye aynı diski tekrar koyamazsınız."
    puts ""
  end
  if secilen_kule == 2 && hedef_kule == 1
    if kule1.length == 0 || kule2.last < kule1.last
      kule1 << kule2.pop
      tasinan += 1
    else
      puts "Geçersiz hareket. Daha küçük diskin üstünde büyük bir disk yer alamaz."
      puts "Tekrar dene!"
      puts ""
    end
  end
  if secilen_kule == 2 && hedef_kule == 3
    if kule3.length == 0 || kule2.last < kule3.last
      kule3 << kule2.pop
      tasinan += 1
    else
      puts "Geçersiz hareket. Daha küçük diskin üstünde büyük bir disk yer alamaz."
      puts "Tekrar dene!"
      puts ""
    end
  end
  if secilen_kule == 3 && hedef_kule == 3
    puts "Aynı kuleye aynı diski tekrar koyamazsınız."
    puts ""
  end
  if secilen_kule == 3 && hedef_kule == 1
    if kule1.length == 0 || kule3.last < kule1.last
      kule1 << kule3.pop
      tasinan += 1
    else
      puts "Geçersiz hareket. Daha küçük diskin üstünde büyük bir disk yer alamaz."
      puts "Tekrar dene!"
      puts ""
    end
  end
  if secilen_kule == 3 && hedef_kule == 2
    if kule2.length == 0 || kule3.last < kule2.last
      kule2 << kule3.pop
      tasinan += 1
    else
      puts "Geçersiz hareket. Daha küçük diskin üstünde büyük bir disk yer alamaz."
      puts "Tekrar dene!"
      puts ""
    end
  end
  if kule2 == son || kule3 == son
    puts "Sen Kazandın! Hepsini #{tasinan}. hamlede son kuleye taşımayı başardın!"
    break
  end
end
