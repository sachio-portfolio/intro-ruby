# 問3 文字変換アルゴリズム
# 与えられた文字列の大文字と小文字を入れ替えるプログラムを作成
# 例：
# abCD → ABcd
# EEEE → eeee
# ffff → FFFF

def swap_letter(letters)
  converted_letters = []
  letters.split("").each do |letter|
    if letter.upcase == letter
      converted_letters.push(letter.downcase)
    else
      converted_letters.push(letter.upcase)
    end
  end
  converted_letters.join  # swap_letterメソッドの戻り値
end
puts swap_letter("abCD")
puts swap_letter("EEEE")
puts swap_letter("ffff")
