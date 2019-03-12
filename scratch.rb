require 'pry'

def find_pivot_letter(word)
  word.index((word.scan(/[aeiou]/)[0]))
end

def pig_latinize_word(word)
  if find_pivot_letter(word) == 0
    word+"way"
  else
    word_second_part = word.chars[0..(find_pivot_letter(word)-1)].join+"ay"
    word_first_part = word.chars[find_pivot_letter(word)..word.length].join
    word_first_part + word_second_part
  end
end
binding.pry
pig_latinize_word("spiderman")
