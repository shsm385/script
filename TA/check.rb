# -*- coding : utf-8 -*-

def read_file
  a = []
  File.open(ARGV[0]){|f|
    f.each_line do |line|
	  line.slice!('1')
	  line.slice!('2')
	  line.slice!('3')
	  line.slice!('4')
	  line.slice!('5')
	  a.push(line)
	end
  }  
  return a
end

def read_test  
  a = []
  File.open(ARGV[1]){|f|
    f.each_line do |line|
	  line.slice!('1')
	  line.slice!('2')
	  line.slice!('3')
	  line.slice!('4')
	  line.slice!('5')
	  a.push(line)
	end
  }  
  return a
end

def flat(a,b)
  return a.push(b).flatten!
end

def check(a)
  return a.select{|e| a.index(e)!=a.rindex(e)}.uniq 
end


puts check(flat(read_file,read_test))
 
