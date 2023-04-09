# Name: substrings
# Inputs: A string of one or many words
#         An array of valid substrings
# Outputs: A hash that lists each substring found within original string
#          and the substring's count



def substrings(str, valid_words)
  str = str.downcase.scan(/\w+/).to_a
  valid_words.reduce(Hash.new(0)) do |substr, count|
    str.each do |word|
      if word.include? count 
        substr[count] += 1 
      end
    end
    substr
  end
end


string = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings(string, dictionary)