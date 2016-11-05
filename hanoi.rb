KULELER = { "a" => [],
            "b" => [],
            "c" => []
}

def kulelerigoster()
	puts "Kule A = " + KULELER["a"].to_s
  	puts "Kule B = " + KULELER["b"].to_s
  	puts "Kule C = " + KULELER["c"].to_s
  	puts ""
end

def tasi(buradan, buraya)
	if KULELER[buradan].count == 0
		puts "Bu kule boş lütfen başka bir kuleyi seçiniz!"
	elsif (KULELER[buraya].count != 0) && KULELER[buradan].last > KULELER[buraya].last
		puts "Bunu yapamazsınız!"
	else 
		KULELER[buraya] << KULELER[buradan].pop
	end
end

def hanoi(n)
	kulelerigoster()
	oyun_bitti_mi = false
	while !oyun_bitti_mi
	 	puts "Hangi kuleden disk taşımak istiyorsunuz?"
	 	buradan = gets.chomp.downcase
     		puts "Hangi kuleye disk taşımak istiyorsunuz?"
    		buraya  = gets.chomp.downcase
    		tasi(buradan, buraya)
    		kulelerigoster()
    		if KULELER["c"].length == (1..n).to_a.length
    		oyun_bitti_mi = true
    		puts "Tebrikler, siz kazandınız :)"
    		puts ""
    		end
    	end
end


puts "Kaç tane disk ile oynamak istersiniz?"
diskler = gets.chomp.to_i
(1..diskler).each do |disk|
  KULELER["a"] << disk
end

hanoi(diskler)
