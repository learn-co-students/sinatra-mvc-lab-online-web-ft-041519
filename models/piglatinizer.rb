class PigLatinizer

  def piglatinize(str)
    a = str.split(" ")
    latin = a.map{|word| latinizer(word)}
    latin.join(" ")
  end
  
  def latinizer(word)
    new_word = ""
    if word.match(/\A[AEIOUaeiou]/)
      new_word = word + "way"
    else
      word_arr = word.split("")
      until word_arr[0].match(/[AEIUOaeiou]/)
        word_arr.tap{|w| w.push(w[0]).shift}
      end
      new_word = word_arr.join('') + "ay"
    end
    new_word
  end
  
end