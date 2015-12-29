File.open("/usr/share/dict/words", 'r') do |file|
  file.each_line do |line|
    Word.create(word: line.chomp, sorted: line.chomp.downcase.split('').sort.join)
  end
end

