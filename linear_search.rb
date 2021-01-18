# 実装要件
# 1.探したい数字を入力できること
# 2.入力した数字がもしあれば、数字が存在するインデックスを表示させること
# 3.もし探したい数字がなければNoneと表示させること
# 4.インデックスは0から考え、インデックス0に目的の数字が合った場合、0と出力させること

# 必要な手順
# 1. まずは、探したい数字が含まれている（はずの）配列と、実際に探したい数字の二つを引数としてメソッドに送る
# 2. その後、配列の要素を一つずつ取り出し、「探したい数字」と一致しているかを比べる繰り返し処理を記述する
# 3. 一致していたら、その配列のindex（添字）の数字をreturnする
# 4. 繰り返しが終了してもreturnされなかったら、一致している数字がなかったということなので、「None」をreturnする

# 以下に線形探索法を行う関数を定義してください
def linear_search(numbers,value)
  count = 0
  numbers.each do |number|
    if number == value
      return count
    else
      count += 1
    end
  end
  return "None"
end
# 「探したい数字」が含まれている配列
numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]
puts("numbers" + numbers.to_s) # 配列の値をターミナルに表示
puts('配列numbersから探したい数字を入力してください')
# 探したい数字を入力する
target_number = gets.to_i
# 数字をlinear_searchメソッドで探し、探した結果をputsで出力する
puts(linear_search(numbers, target_number))

解答例：
def linear_search(numbers, value)
  # 「探したい数字」が含まれている配列のindexを指定するi
  i = 0
  # iが配列の個数を超えるまで繰り返し処理をする
  while i < numbers.length
    # もしも、iのindexから出される配列の値が、「探したい数字」と一致していたら
    if numbers[i] == value
      # そのインデックスの値をreturnする
      return i
    end
    # もしも、iのindexから出される配列の値が、「探したい数字」と一致していなかったら
    # 次の数字をチェックするためにiの数字を+1する
    i += 1
  end
  # iが配列の個数を超えても探したい数字がなかったら、その配列の中に探したい数字がない
  # ということなので、Noneを返す
  "None"
end
