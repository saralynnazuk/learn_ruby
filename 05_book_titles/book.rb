class Book
attr_reader :title

  def title=(title_string)
    exceptions = %w[the a an and in of]
    @title = title_string.split(" ").each_with_index.map { |word, index|
      exceptions.include?(word) && index != 0 ? word : word.capitalize
    }.join(" ") #could have all been one line but I chose to break it up for readability
  end

end
