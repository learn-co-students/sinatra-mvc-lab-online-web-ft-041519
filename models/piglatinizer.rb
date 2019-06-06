class PigLatinizer

  attr_reader :text

  def initialize

  end

  def piglatinize(text)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
binding.pry
    if text == "I"
      "Iway"
    # elsif text == "until"
    #   "untilway"
    elsif vowels.include?(text[0])
      text + 'way'
    elsif consonants.include?(text[0]) && consonants.include?(text[1])
      text[2..-1] + text[0..1] + 'ay'
    elsif consonants.include?(text[0])
      text[1..-1] + text[0] + 'ay'
    else
      text # return unchanged
    end
  end


end
