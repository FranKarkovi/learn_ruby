#write your code here


def translate_word(word)
  regexp = /^([bcdfghjklmnpqrstvwxyz]*qu|[bcdfghjklmnpqrstvwxyz])*/
  initial_consonant = regexp.match(word).to_s
  translated_word = word.gsub(initial_consonant, '') + initial_consonant + 'ay'
  translated_word
end

def translate(sentence)
  words = sentence.split(' ')
  translated_sentence = words.map { |word| translate_word(word) }.join(' ')
  translated_sentence
end
