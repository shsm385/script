# -*- coding : utf-8 -*-
require 'date'

casts = ["sumida","kawakatsu","zakimoto","yamaguchi","sasaki"]

def randDisplay(casts)
  this_tue = Date.new(2016,11,1)
  num = 0
  casts.shuffle!
  casts.each do |cast|
    puts "#{this_tue}: #{cast}"
	num = num + 1;
	this_tue = this_tue + 7
	if num == 1 then 
			this_tue = this_tue + 7
	end
  end
end

randDisplay(casts)
