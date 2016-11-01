#ikinci-ödev
#maxmin099
#Sayı Tutan-Tutturan

def giris
  puts "Sayı Tutan-Tutturana hoşgeldin!"
  puts "1) PC tutsun, ben bulayım"
  puts "2) Ben tutayım, PC bulsun"
  @secim= gets.chomp.to_i
end

def secim(x)
  if x==1
    sayitutan
  elsif x==2
    sayibulan
  end
end

def sayitutan
  puts
  puts "Tamamdır, tuttum! Tahmin etmeye başlayabilirsin."
  sayi= rand(0...100)
  puts sayi
  tahmin=gets.chomp.to_i
  tahminler=[]
   while (sayi!=tahmin)
     if tahmin>sayi
       puts "PC'nin sayısı daha küçük..."
       tahminler<<tahmin
       tahmin= gets.chomp.to_i
    elsif tahmin <sayi
      puts "PC'nin sayısı daha büyük..."
      tahminler<<tahmin
      tahmin= gets.chomp.to_i
    end
   end
  tahminler<<tahmin
  puts
  puts "Helal! #{tahminler.length} tahminde buldun!!"
  puts "Tuttuğum sayı: #{tahmin}"
  print "Tahminlerin:"
  print tahminler
end

def sayibulan
  tahminler=[]
  ust=100
  alt=0
  puts
  puts "Sayı tutunca enter'a bas"
  gets
  tahmin= rand(alt..ust)
  tahminler<<tahmin
  puts "#{tahmin}? (+/-/d)"
  secim= gets.chomp
   while(secim!="d")
     if secim=="+"
       if alt<tahmin
         alt=tahmin+1
       end
       tahmin= rand(alt..ust)
       tahminler<<tahmin
       puts "#{tahmin}? (+/-/d)"
       secim= gets.chomp
     elsif secim== "-"
       if ust>tahmin
         ust=tahmin-1
       end
       tahmin= rand(alt..ust)
       tahminler<<tahmin
       puts "#{tahmin}? (+/-/d)"
       secim= gets.chomp
     end
   end
   puts
   puts "Yuppi! #{tahminler.length} tahminde buldum!!"
   puts "Tuttuğun sayı: #{tahmin}"
   print "Tahminlerim:"
   print tahminler
 end


giris
secim(@secim)
