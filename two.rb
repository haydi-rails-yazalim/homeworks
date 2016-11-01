#ikinci ödev -jackpot oyunu
#ecenurozturk
system "clear"
puts "Oyuna Baslamak icin Adinizi Giriniz"
puts ""
name = gets.chomp.to_s

jackpot_pic = %Q(
             ___________
            |           |   o
            |  Peyneith |  /
            |  Jackpot  | /
            |_ _ _ _ _ _|/
            | 0 | 0 | 0 |
            |¯¯¯¯¯¯¯¯¯¯¯|
            |___________|
)

puts jackpot_pic

@start_money=100

def write_score
	puts "Puanınız: #{@start_money}"
  puts " "
end

puts "Baslangic puanın #{@start_money} #{name}"
button_start = 1

while button_start != "q" do
	puts" => Oyuna baslamak icin 1'e basmalısınız."
	puts " => Oyundan çıkmak için q tuşuna basmalınız."
	button_start = gets.chomp

 if (button_start=="1")
		puts "Oyun başlıyor #{name}"
		@start_money = @start_money - 20

	elsif button_start == "q"
		exit

	else
		puts "yanlis oldu 1 e basmalisin :)"
	end

	puts""

	numbers=[0,1,2,3,4,5,6,7,8,9]
	puts numbers.sample

	for i in 0..15 do
		system "clear"

		jackpot_pic = %Q(
		             ___________
		            |           |
		            | Peyneith  |
		            | Jackpot   |
		            |_ _ _ _ _ _|
		            | #{numbers.sample} | #{numbers.sample} | #{numbers.sample} |\\
		            |¯¯¯¯¯¯¯¯¯¯¯| \\
		            |___________|  \\
		                            o
		)

		puts jackpot_pic
		sleep 0.2
	end

	system "clear"
		jackpot_pic = %Q(
		             ___________
		            |           |   o
		            | Peyneith  |  /
		            | Jackpot   | /
		            |_ _ _ _ _ _|/
		            | #{a = numbers.sample} | #{b = numbers.sample} | #{c = numbers.sample} |
		            |¯¯¯¯¯¯¯¯¯¯¯|
		            |___________|

		)
	puts jackpot_pic
def result(a,b,c)
  if a == b && b == c
		puts "----Tebrikler 100 Puan kazandınız----."
    puts " "
		@start_money += 100
		write_score()
  elsif a == b || a == c || b == c
  	puts "----Tebrikler 50 Puan kazandınız.----"
    puts ""
  	@start_money += 50
  	write_score()
	else
		puts "----Üzgünüm 20 puan kaybettiniz.----"
    puts " "
    write_score()
	end
end
puts result(a,b,c,)

def paying_off(c)
  if c==7
    puts "Süpriz :) amorti kazandınız.Yeni"
    @start_money += 10
		write_score()
  end
end
paying_off(c)

if @start_money <=0
  puts "Paranız yeterli değil. üzgünüm"
  exit
end
  end
