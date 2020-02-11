class Book
# write your code here
  def title=(book_title)
    @title = capitalize_sentence(book_title)
  end

  def title
    @title
  end
end

def capitalize_sentence(sentence)
  excluded_words = ['the', 'a', 'an', 'and', 'in', 'of']
  capitalized_sentence = sentence.split(' ')
    .map do |word|
      if not excluded_words.include?(word)
        word = word.capitalize
      end
      word
    end
    .join(' ')
  capitalized_sentence[0].upcase + capitalized_sentence[1..-1]
end
        