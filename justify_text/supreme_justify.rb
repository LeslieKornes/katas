def justify(text, width)  
  text.split.reduce([[]]) do |lines, word|
    line = lines.last
    if (spaces = width - line.join(' ').length) > word.length
      line << word
    else
      spaces.times { |i| line[i % (line.count - 1)] += ' ' } if line.count > 1 
      lines << [word]  
    end
    lines
  end.map { |line| line.join(' ') }.join("\n")
end

puts justify("a man a plan a canal panama a man a plan a canal panama", 15)