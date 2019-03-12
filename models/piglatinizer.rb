require 'pry'

class PigLatinizer

  attr_reader :user_phrase

  def initialize(text = "")
    @user_phrase = text
  end

  def piglatinize(string)
    string.split(" ").map do |word|
      pig_latinize_word(word)
    end.join(" ")
  end

  private
  def find_pivot_letter(word)
    i = 0
    word.index((word.scan(/[aeiouAEIOU]/)[0]))
  end

  def pig_latinize_word(word)
    if word.length == 1
      word+"way"
    elsif find_pivot_letter(word) == 0
      word+"way"
    else
      word_second_part = word.chars[0..(find_pivot_letter(word)-1)].join+"ay"
      word_first_part = word.chars[find_pivot_letter(word)..word.length].join
      word_first_part + word_second_part
    end
  end


end
