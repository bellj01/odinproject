# Sends each character into a method that shifts them the desired amount
# ASCII: A...Z = 65...90, a...z = 97...122
def cipher(str, shift)
  cipher_text = ''
  str.each_char do |char|
    

  cipher_text
end

def shifter(char, shift)

  # Test to see which array the character is in
  if alpha.include? char
    shifted_char = alpha[wrap_around(alpha.index(char)+shift)]
  elsif cap_alpha.include? char
    shifted_char = cap_alpha[wrap_around(cap_alpha.index(char)+shift)]
  end
  shifted_char
end


  

puts cipher("What a string!", 5)
