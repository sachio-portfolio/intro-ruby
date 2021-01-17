# バブルソートの流れ
# 1. 先頭の要素’A’と隣り合う次の要素’B’の値を比較する
# 2. 要素’A’が要素’B’より大きいなら、要素’A’と要素’B’の値を交換する
# 3. 先頭の要素を’B’に移し、要素’B’と隣り合う要素’C’の値を比較/交換する
# 4. 先頭の要素を’C’,’D’,’E’…と移動しながら比較/交換をリストの終端まで繰り返す

# 実装要件
# バブルソートを実行させ、以下のように出力させてください。(途中結果を出力する)
#
# [100, 50, 25, 4, 1]
# [50, 25, 4, 1, 100]
# [25, 4, 1, 50, 100]
# [4, 1, 25, 50, 100]
# [1, 4, 25, 50, 100]

# 以下にバブルソートを行う関数を定義してください
def bubble_sort(numbers)
  p numbers
  ((numbers.length)-1).times do
    i = 0
    while i < (numbers.length)-1 do
      j = i + 1
      if numbers[i] > numbers[j]
        head = numbers[i]
        numbers[i] = numbers[j]
        numbers[j] = head
        i += 1
      else
        i += 1
      end
    end
    p numbers
  end
end
bubble_sort([100, 50, 25, 4, 1])

# 解答例:
# def bubble_sort(numbers)
#   # 配列の数だけ、ソートを繰り返す
#   # iは「配列のインデックス番号」
#   for i in 0..((numbers.length)-1)
#     # 配列の移動を目で確認するためのp(number)
#     p(numbers)
#     # まだ調べていない配列の中身を、左から順にすべてチェックする
#     # jは「今回の探索でまだ調べていない配列の数字」
#     for j in 1.. ((numbers.length)-i-1)
#       # 左と右の数字を比べて、左のほうが大きかったら
#       if numbers[j-1] > numbers[j]
#         # 左と右を交換する
#         numbers[j-1],numbers[j] = numbers[j],numbers[j-1]
#       end
#     end
#   end
# end
# bubble_sort([100,50,25,4,1])
