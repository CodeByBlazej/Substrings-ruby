require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (str, dictionary)
  
  str_words = str.downcase.split(/\W+/)
  
  matching_words = []
  
  
  dictionary.each do |element|
    str_words.each do |word|
      if word.include?(element)
        matching_words.push(element)
      end
    end
  end

    binding.pry


  calculation = matching_words.reduce(Hash.new(0)) do |result, number|
    result[number] += 1
    result
  end

  p calculation
  
end


substrings("Howdy partner, sit down! How's it going?", dictionary)