class PigLatinizer

  def piglatinize(string)
    oink = []
    string.split(' ').each do |word|
      if word[0].downcase.match(/[aeiou]/)
        oink << "#{word}way"
      else
        first_vowel = word.index(/[aeiou]/)
        oink << "#{word[first_vowel..-1]}#{word[0...first_vowel]}ay"
      end
    end
    oink.join(' ')
  end
end
