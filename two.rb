def cikis
puts "Son durum:"
puts "Oyuncu:#{@oyuncu} Pc:#{@pc}"
if @oyuncu>@pc
  puts "Tebrikler kazandınız!"
else
  puts "Kaybettin :("
end
exit
end

def karsilastir

  if (@oyuncusecim==1 && @x==0) || (@oyuncusecim==2 && @x==1) || (@oyuncusecim==3 && @x==2)
  puts "Berabere"
  end

  if (@oyuncusecim==1 && @x==2) || (@oyuncusecim==2 && @x==0) || (@oyuncusecim==3 && @x==1)
  puts "Helal sana"
  @oyuncu= @oyuncu+1
  end

  if (@oyuncusecim==1 && @x==1) || (@oyuncusecim==2 && @x==2) || (@oyuncusecim==3 && @x==0)
  puts "Kaybettin"
  @pc=@pc+1
  end
end



def sorma
  puts
  puts
  @tkm=["Taş","Kağıt","Makas"]
  @x=rand(3)
  puts "1)Taş? 2)Kağıt? 3)Makas?       4)Oyunu bitir"
  @oyuncusecim= gets.chomp.to_i
  if @oyuncusecim==4
    exit
  end
end




@oyuncu=0
@pc=0

while 0
sorma
if @oyuncusecim!=1 &&@oyuncusecim!=2 &&@oyuncusecim!=3 &&@oyuncusecim!=4
  puts "lütfen seçimi doğru yapınız"

else
puts "Senin seçimin:#{@tkm[@oyuncusecim-1]}           PC:#{@tkm[@x]}"
karsilastir
end
puts "Oyuncu:#{@oyuncu} Pc:#{@pc}"

end
