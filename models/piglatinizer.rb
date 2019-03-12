class PigLatinizer

    def words(text)
        text.split(" ")
    end

    def piglatinize(text)
        solution = words(text).map do |word|
            if word[0].match(/[aeouiAEIOU]/)
                word += "way"
            elsif word[0, 2].match(/pr/)
                word[2..-1] + word[0, 2] + "ay"
            elsif word[0, 2].match(/pl/)
                word[2..-1] + word[0, 2] + "ay"
            elsif word[0, 2].match(/th/)
                word[2..-1] + word[0, 2] + "ay"
            elsif word[0, 2].match(/wh/)
                word[2..-1] + word[0, 2] + "ay"
            elsif word[0, 2].match(/sk/)
                word[2..-1] + word[0, 2] + "ay"
            elsif word[0, 3].match(/spr/)
                word[3..-1] + word[0, 3] + "ay"
            elsif word[0, 3].match(/Str/)
                word[3..-1] + word[0, 3] + "ay"
            else
                word[1..-1] + word[0] + "ay"
            end
        end
        solution.join(" ")
    end

end