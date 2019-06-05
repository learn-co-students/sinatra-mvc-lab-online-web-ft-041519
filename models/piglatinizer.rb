class PigLatinizer 
  
  def piglatinize(words)
    plwords = [] 
    words.split(" ").each do |word| 
      if word[0].downcase.match(/[AEIOUaeiou]/) 
        plwords << "#{word}way" 
      else 
        first_vowel = word.index(/[aeiou]/)
        plwords << "#{word[first_vowel..-1]}#{word[0...first_vowel]}ay"
      end 
    end 
    plwords.join(" ")
  end 
  
end 