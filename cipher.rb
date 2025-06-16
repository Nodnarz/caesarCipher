def cipher(string, shift)
  result = []
  alpha_l = ("a".."z").to_a
  alpha_u = ("A".."Z").to_a

  string.each_char do |character|
    if alpha_l.include?(character)
      index = (alpha_l.index(character) + shift).modulo(26)
      result << alpha_l[index]
    elsif alpha_u.include?(character)
      index = (alpha_u.index(character) + shift).modulo(26)
      result << alpha_u[index]
    else
      result << character
    end
  end
  result.join
  puts result.join
end

cipher("Hello", 1)