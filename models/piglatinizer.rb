require 'pry'
class PigLatinizer
    attr_reader :phrase

    def initialize
        
    end

    def piglatinize(phrase)
        new_array = []
        array = phrase.split(" ")
        array.each do |word|
            if word.start_with?(/^[aeiou]/i)
                word
                word << "way"
                new_array << word
            else
                parts = word.split(/([aeiou].*)/)
                #binding.pry
                new_word = parts.reverse.join("")
                new_word << "ay"
                new_array << new_word
            end
        end
        new_phrase = new_array.join(" ")
        new_phrase

    end

end