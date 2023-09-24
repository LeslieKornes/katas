# mine
def rot13(message)
  message.chars.reduce([]) do |arr, char|
    if char.ord.between?(65, 90) || char.ord.between?(97, 122)
      case char
      when 'a'..'m', 'A'..'M'
        arr << (char.ord + 13).chr
      when 'n'..'z', 'N'..'Z'
        arr << (char.ord - 13).chr
      end
    else
      arr << char
    end
  end.join
end

# another solution
# def rot13(message)
#   result = ""
#   lower = ("abcdefghijklmnopqrstuvwxyz").split("").rotate(-13)
#   upper = ("ABCDEFGHIJKLMNOPQRSTUVWXWZ").split("").rotate(-13)
#   message.split("").each do |x|
#     num = x.ord
#     letter = ""
#     if num > 64 && num < 91
#       num -= 65
#       letter = upper[num]
#     elsif num > 96 && num < 123
#       num -= 97
#       letter = lower[num]
#     end
#     letter == "" ? result += x : result += letter
#   end
#   result
# end

# puts rot13("EBG13 rknzcyr.")
# puts rot13("Va gur ryringbef, gur rkgebireg ybbxf ng gur BGURE thl'f fubrf")
# puts rot13("Guvf vf zl svefg EBG13 rkprepvfr!")
# puts rot13("This is my first ROT13 excercise!")
# puts rot13("Guvf vf npghnyyl gur svefg xngn V rire znqr. Gunaxf sbe svavfuvat vg! :)")
puts rot13("@[`{")
