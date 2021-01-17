# 実装要件
# 選択ソートを実行させ、以下のように出力させてください。(途中結果を出力する)
# [12, 13, 11, 14, 10]
# [10, 13, 11, 14, 12]
# [10, 11, 13, 14, 12]
# [10, 11, 12, 14, 13]
# [10, 11, 12, 13, 14]

# 以下に選択ソートを行う関数を定義してください
def selection_sort(numbers)
  p numbers
  i = 0
  while i < (numbers.length)-1 do
    indexMin = i
    k = i + 1
    while k < numbers.length
      if numbers[k] < numbers[indexMin]
        indexMin = k
      else
        k += 1
      end
    end
    w = numbers[i]
    numbers[i] = numbers[indexMin]
    numbers[indexMin] = w
    i += 1
    p numbers
  end
end
selection_sort([12, 13, 11, 14, 10])
