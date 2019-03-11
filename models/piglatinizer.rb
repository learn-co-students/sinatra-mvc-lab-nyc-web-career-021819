class PigLatinizer
    attr_accessor :user_phrase

    def initialize
        # self.user_input = user_input
        # self.piglatinized_user_input = self.user_input.piglatinize
    end

    def piglatinize(string)
        #turn input string into array of words
        self.user_phrase = string
        alphabet = ('a'..'z').to_a
        vowel = ["a", "e", "i", "o", "u"]
        consonant = alphabet - vowel
        words = self.user_phrase.split(" ")

        #iterate through array, piglatinizing each word
        words.map do |word|
            comp_word = word.downcase
            if vowel.include?(comp_word[0])
                word + 'way'
            elsif consonant.include?(comp_word[0]) && consonant.include?(comp_word[1]) && consonant.include?(comp_word[2])
                word[3..-1] + word[0..2] + 'ay'
            elsif consonant.include?(comp_word[0]) && consonant.include?(comp_word[1])
                word[2..-1] + word[0..1] + 'ay'
            elsif consonant.include?(comp_word[0])
                word[1..-1] + word[0] + 'ay'
            else
                word
            end
        end.join(" ")
    end
end