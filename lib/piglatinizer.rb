class Piglatinizer
  def piglatinize(phrase)
    phrase.split(' ').map { |word| piglatinize_word(word) }.join(' ')
  end

  def piglatinize_word(word)
    return word + 'ay' if word =~ /\A[aeiou]/i

    match = /\A[^aeiou]+/i.match(word)
    match.post_match + match.to_s + 'ay'
  end
end
