def seperate_words (sentence)
  sentence.split(' ')
end
def seperate_letter (word)
  word.split('')
end

def vowel_check(word,letter_index)
    vowels = ['a','e','i','o','u','y']
    vowels.include?(word[letter_index])
end


def letter_move(letter_array)
  temp = letter_array[0]
  letter_array.shift
  letter_array.push(temp)
end


def translate(input)
  final_sentence = []
  index_word = 0
  sentence_array = seperate_words(input)
  while (index_word < sentence_array.length)
    letter_array = seperate_letter(sentence_array[index_word])
    letter_index = 0
      if vowel_check(letter_array,letter_index)
         final_sentence.concat(letter_array.push('w','a','y'))
      else
        until (vowel_check(letter_array,letter_index))
          letter_array = letter_move(letter_array)
        end
        final_sentence.concat(letter_array.push('a','y'))
      end
      final_sentence.push(" ")
      index_word += 1
  end
 final_sentence.pop
 final_sentence.join
end

input = ARGV.join(" ")
puts translate(input)
