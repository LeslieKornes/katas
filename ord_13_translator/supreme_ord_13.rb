def rot13(message)
  message.tr('a-m,n-z,A-M,N-Z', 'n-z,a-m,N-Z,A-M')
end

puts rot13("EBG13 rknzcyr.")
puts rot13("Va gur ryringbef, gur rkgebireg ybbxf ng gur BGURE thl'f fubrf")
puts rot13("Guvf vf zl svefg EBG13 rkprepvfr!")
puts rot13("This is my first ROT13 excercise!")