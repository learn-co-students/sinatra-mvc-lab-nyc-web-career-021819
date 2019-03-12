class PigLatinizer

attr_reader :text


# can create a new instance of a class (FAILED - 1)
#  piglatinizes an individual word (FAILED - 2)
#  has a method splits the sentence to piglatinize each word (FAILED - 3)


  def initialize
    @text = text
  end

  #
  # def piglatinize(word)
  #   if word =~ (/\A[aeiou]/i)
  #   word = word + 'way'
  # elsif word =~ (/\A[^aeiou]/i)
  #   match = /\A[^aeiou]/i.match(word)
  #   word = match.post_match+match.to_s + 'ay'
  # end
  #   word
  # end

  def piglatinize(text)
    words = text.split(" ")
    arr = words.map {|w| piglatinize2(w)}
    arr.join(" ")
  end


  def piglatinize2(word)
      if word =~ (/\A[aeiou]/i)
      word = word + 'way'
    else
        match = /\A[^aeiou]/i.match(word)
        if match != nil
          word2 = word.split('')[1..-1].join.to_s
          match2 = /\A[^aeiou]/i.match(word2)
    # binding.pry
          if match2 != nil
            word3 = word.split('')[2..-1].join.to_s
            match3 = /\A[^aeiou]/i.match(word3)
            # binding.pry
                if match3 != nil
                  word4 = word.split('')[3..-1].join.to_s
                  match4 = /\A[^aeiou]/i.match(word4)
                    if match4 == nil
                    word = match3.post_match+match.to_s+match2.to_s+match3.to_s+ 'ay'
                  end
                elsif match3 == nil
                  word = match2.post_match+match.to_s+match2.to_s+ 'ay'
                end
            elsif match2 == nil
              word = match.post_match+match.to_s + 'ay'
          end
      end
    end
  end





end
