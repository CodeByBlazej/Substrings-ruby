require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (str, dictionary)
  
  str_words = str.downcase.split()
  binding.pry

  matching_words = []
  
  dictionary.each do |element|
    str_words.each do |word|
      if element.include?(word)
        matching_words.push(word)
      end
  end

  p matching_words
  # dictionary.reduce(Hash.new(0)) do |result, value|
  #   str_words.each do |word|
  #     if dictionary.include?(word)
  #       p word
  #       # result[value] = value
  #       # result
  #     end
  #   end
  end


end


substrings("Howdy partner, sit down! How's it going?", dictionary)