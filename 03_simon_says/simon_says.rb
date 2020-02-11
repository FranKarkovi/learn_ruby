#write your code here

def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase, repetitions = 2)
  ((phrase + ' ' ) * repetitions).strip
end

def start_of_word(word, letters = 1)
  word[0..(letters-1)] 
end

def first_word(phrase)
  phrase.split(' ')[0]
end

def titleize(phrase)
  excluded_words = ['the', 'over', 'and', 'is', 'it']

  titleized_phrase = phrase.split.map do |word|
    if excluded_words.include?(word)
      w = word
    else
      w = word[0].upcase + word[1..-1]
    end
    w
  end
    .join(' ')

  titleized_phrase[0].upcase + titleized_phrase[1..-1]

end

