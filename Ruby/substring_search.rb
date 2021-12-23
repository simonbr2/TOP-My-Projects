def substrings(text, dictionary)
  result = Hash.new(0)
  lowercase = text.downcase
  
  dictionary.each do |word|
    matches = lowercase.scan(word).length
    result[word] = matches unless matches == 0
  end

  p result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)



