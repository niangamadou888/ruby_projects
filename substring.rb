dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word,dictionary)
    
    word.downcase!  # Convert the word to lowercase for case-insensitive matching
  result = Hash.new(0)  # Initialize a hash to store the substrings and their counts

  dictionary.each do |substring|
    substring.downcase!  # Convert the substring to lowercase for case-insensitive matching
    count = word.scan(substring).length
    if count > 0 # Count the occurrences of the substring in the word
        result[substring] += count  # Update the count in the hash
    end
  end

  result

end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)