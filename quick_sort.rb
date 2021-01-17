# 配列
# numbers = [4, 8, 6, 5, 2, 1, 3, 9, 7]
# を、クイックソートを使って
# [1, 2, 3, 4, 5, 6, 7, 8, 9]
# に並べ替えてください。
# FIXMEの部分を修正してください。

# 以下にクイックソートを行う関数を定義してください
def quick_sort(numbers)
  # FIXME (要素が1つのみの場合はそのまま返却)
  return numbers if numbers.size == 1
  target = numbers.shift
  smallers = []
  biggers = []
  numbers.each do |sort_number|
    if sort_number < target
      smallers << sort_number # <<演算子:左辺の配列の末尾に右辺の要素を加える。
    else
      biggers << sort_number # <<演算子:左辺の配列の末尾に右辺の要素を加える。
    end
  end
  # FIXME (smallersとbiggersをそれぞれソートして統治)
  quick_sort(smallers) + [target] + quick_sort(biggers) #配列の結合
end
numbers = [4, 8, 6, 5, 2, 1, 3, 9, 7]
p quick_sort(numbers)

# 解答例：
# def quick_sort(numbers)
#   return numbers if numbers.size < 2
#   target = numbers.shift
#   smallers = []
#   biggers = []
#   numbers.each do |sort_number|
#       if sort_number < target
#           smallers << sort_number
#       else
#           biggers << sort_number
#       end
#   end
#   quick_sort(smallers) + [target] + quick_sort(biggers)
# end
# numbers = [4, 8, 6, 5, 2, 1, 3, 9, 7]
# p quick_sort(numbers)

# 挙動の流れ：
# 最初 [4, 8, 6, 5, 2, 1, 3, 9, 7]
# １回目[2, 1, 3, 4, 8, 6, 5, 9 ,7]
# 4を基準  smallers[2, 1, 3] biggers[8, 6, 5, 9 ,7]
# ２回目[1, 2, 3, 4, 8, 6, 5, 9, 7]
# 2を基準 smallers[1,2,3] biggers[１回目と同じ]
# ３回目[1, 2, 3, 4, 6, 5, 7, 8, 9]
# 8を基準  smallers[２回目と同じ] biggers[6,5,7,8,9]
# ４回目[1, 2, 3, 4, 5, 6, 7, 8 9]
# 6を基準 smallers[２回目と同じ] biggers[5,6,7,8,9]
