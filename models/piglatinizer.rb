class PigLatinizer
  attr_accessor :phrase

  def initialize
    @phrase = phrase
  end

  def piglatinize(phrase)
    final_phrase = []
    new_word = ""

      phrase.split(" ").each do |word|
        if word.downcase.start_with?('a','e','i','o','u')
          new_word = (word + "way")
          final_phrase << new_word
        elsif (word[0..2] =~ /\A(?i:(?![aeiou])[a-z]){3}/) == 0
          word << (word[0..2] + "ay")
          word.slice!(0..2)
          final_phrase << word
        elsif (word[0..1] =~ /\A(?i:(?![aeiou])[a-z]){2}/) == 0
          word << (word[0..1] + "ay")
          word.slice!(0..1)
          final_phrase << word
        else
          word << (word[0] + "ay")
          word.slice!(0)
          final_phrase << word
        end
      end
    final_phrase.join(" ")
  end

  def self.clear

  end

end
