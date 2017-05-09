def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, num = 2)
  repeated = (string + " ") * num
  repeated.rstrip!
end

def start_of_word(word, n_letters)
  word[0...n_letters]
end

def first_word(string)
   string.partition(" ").first
end

def titleize(title)
  small_words = %w[and the over] #list can be extended to include various other small words not to be capitalised
  title.split(" ").each_with_index.map { |word, index| small_words.include?(word) && index != 0 ? word : word.capitalize }.join(" ")
end
