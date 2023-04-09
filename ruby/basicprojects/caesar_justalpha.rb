# Sends each character into a method that shifts them the desired amount, doesn't handle numbers
def cipher(str, shift)
  cipher_text = ''
  str.each_char do |char| 
    if char.match(/^[[:alpha:]]$/)
      cipher_text.concat(shifter(char, shift))
    else cipher_text.concat(char)
    end
  end
  cipher_text
end

def shifter(char, shift)
  # Using arrays of alphabet seemed easier than switching to ordinal values
  alpha = ("a".."z").to_a
  cap_alpha = ("A".."Z").to_a
  # Test to see which array the character is in
  if alpha.include? char
    shifted_char = alpha[wrap_around(alpha.index(char)+shift)]
  elsif cap_alpha.include? char
    shifted_char = cap_alpha[wrap_around(cap_alpha.index(char)+shift)]
  end
  shifted_char
end

# Adjusts the indexing value for shifter based on whether the shiftingvalue would be in array bounds
def wrap_around(distance)
  while distance > 25 
    distance -= 26
  end
  while distance < 0 
    distance += 25
  end
  distance
end

  

puts cipher("What a string1!", 5)