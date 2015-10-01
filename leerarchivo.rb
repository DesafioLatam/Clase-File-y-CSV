file = File.open 'killer_contract.txt', 'r'

lines = []

file.each_line do |l|
 if l.match(/[#]/)
   puts "line #{file.lineno}: #{l}"
 end
end

file.rewind

words = file.read.split(' ').each do |w|
 w.gsub!(/[¿?:;,#\.\[\]]/, '')
end.delete_if{|w| w.empty?}

file.close

print words
puts words[1..20]