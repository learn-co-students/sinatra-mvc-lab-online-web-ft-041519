class PigLatinizer

  attr_accessor :text, :text_array

  def piglatinize(text)

    if text.split(" ").length > 1
      new_array = []
      array = text.split(" ")
      array.each {|word| new_array << latinize(word)}
      new_array.join(" ")
    else
      latinize(text)
    end
  end

  def latinize(text)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    if vowels.include?(text[0].downcase)
      text + "way"
    elsif consonants.include?(text[0]) && consonants.include?(text[1]) && consonants.include?(text[2])
      text[3..-1] + text[0..2] + 'ay'
    elsif consonants.include?(text[0]) && consonants.include?(text[1])
      text[2..-1] + text[0..1] + 'ay'
    elsif consonants.include?(text[0])
      text[1..-1] + text[0] + 'ay'
    else
      text # return unchanged
    end
  end



end
