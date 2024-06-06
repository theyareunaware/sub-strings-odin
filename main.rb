dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, word_array)
  string_dict = {}
  # separate words from string and remove trailing punctuation
  word_downcased = word.downcase

  # Loop over each dictionary word and check if part of sub string word
  word_array.each do |dict_word|
    # Scan for all dict_word matches
    matches = word_downcased.scan(dict_word)
    # Ignore matches for spaces
    unless matches.empty?
      # Set word to number of matches
      string_dict[dict_word] = matches.length
    end
  end
  string_dict
end

p substrings("below it i.", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
