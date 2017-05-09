def translate(string)
  words = string.downcase.split(" ")
  vowels = %w[a e i o u]
  result = []

  words.each_with_index do |word, i|
    translation = ''
    qu = false
    if vowels.include? word[0]
      translation = word + 'ay'
      result << translation
    else
      word = word.split('')
      count = 0
      word.each_with_index do |letter, index|
        if vowels.include? letter
          if letter == 'u' && translation[-1] == 'q'
            qu = true
            translation = words[i][count + 1..words[i].length] + translation + 'uay'
            result << translation
            next
          end
          break
        else
          if letter == 'q' && word[i + 1] == 'u'
            qu = true
            translation = words[i][count + 2..words[i].length] + 'quay'
            result << translation
            next
          else
            translation += letter
          end
          count += 1
        end
      end

      if not qu
        translation = words[i][count..words[i].length] + translation + 'ay'
        result << translation
      end
    end
  end
  result.join(' ')
end
