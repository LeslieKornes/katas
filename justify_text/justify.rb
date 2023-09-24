def justify(text, width)
  words = text.split
  current_line = []
  current_length = 0
  justified_text = ""

  words.each do |word|
    if current_length + word.length + current_line.length <= width
      current_line << word
      current_length += word.length
    else
      spaces_to_insert = width - current_length
      gap_count = current_line.length - 1
      if gap_count > 0
        spaces_per_gap = spaces_to_insert / gap_count.to_f
        extra_spaces = spaces_to_insert % gap_count
        current_line.each_with_index do |w, i|
          justified_text << w
          if i < gap_count
            justified_text << " " * (i < extra_spaces ? spaces_per_gap.ceil : spaces_per_gap.floor)
          end
        end
      else
        justified_text << current_line[0]
      end
      justified_text << "\n"
      current_line = [word]
      current_length = word.length
    end
  end

  justified_text << current_line.join(" ")
end

puts justify("a man a plan a canal panama a man a plan a canal panama", 12)
