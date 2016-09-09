# -*- coding : utf-8 -*-
require 'io/console'



casts = [1,2,3]
casts2 = ["teamA","teamB","teamC"]

def randButton(casts)
	#プロセスが終わるまで繰り返す
	while (key = STDIN.getch) != "\C-c"
		num = rand(casts.length);

		if  casts[num] == 0
			num = rand(casts.length) + 1;
		end

		#もしエンターキーが押されたらなら
		if key == "\r"
			if casts[num] == 1 then
				puts "A team"
				casts[num] = 0
			elsif casts[num] == 2 then
				puts "B team"
				casts[num] = 0
			elsif casts[num] == 3 then
				puts "C team"
				casts[num] = 0
			end
		end
	end 
end


def randDisplay(casts)
	num = 1
	casts.shuffle!
	casts.each do |cast|
		puts "#{num}番目: #{cast}"
		num = num +1
	end
end

randDisplay(casts2)


