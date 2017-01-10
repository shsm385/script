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

def flat(a,b)
  return a.push(b).flatten!
end

def check(a)
  return a.select{|e| a.index(e)!=a.rindex(e)}.uniq
end

def check2(a)
  for var in a do
    count = 0
    temp = var
    for var2 in a do
      if var2.include?(temp)
        count = count + 1
        if count > 1
          puts temp
        end
      end
    end
  end
end

def barcheck(a)
  for var in a do
    if var.include?("ー")
      puts var
    end
  end
end

def checkblank(a)
  for var in a do
    if var.include?("　")
      puts var
    end
  end
end

puts "テストとデータのチェック"
puts check(flat(read_file,read_file))
puts "データとデータのチェック"
check2(read_file)
puts "空白チェック"
checkblank(read_file)
puts "ーチェック"
barcheck(read_file)
