ALPHABET_LOWERCASE = ('a'..'z').to_a + ('a'..'z').to_a
ALPHABET_UPPERCASE = ('A'..'Z').to_a + ('A'..'Z').to_a

def decypher(string)
  string_chars = string.chars
  result = ''
  string_chars.each do |char|
    if ALPHABET_LOWERCASE.include?(char)
      result << ALPHABET_LOWERCASE[ALPHABET_LOWERCASE.index(char) + 13]
    elsif ALPHABET_UPPERCASE.include?(char)
      result << ALPHABET_UPPERCASE[ALPHABET_UPPERCASE.index(char) + 13]
    elsif
      result << char
    end
  end
  result
end



puts decypher('Nqn Ybirynpr')

puts decypher(
"Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu")
