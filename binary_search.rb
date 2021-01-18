# 実装要件
# 1.探したい数字を入力できること
# 2.入力した数字がもしあれば、数字が存在するインデックスを表示させること（例 3）
# 3.もし探したい数字がなければNoneと表示させること
# 4.インデックスは0から考え、インデックス0に目的の数字が合った場合、0と出力させること

# 必要な手順
# 1. まずは、探したい数字が含まれている（はずの）配列と、実際に探したい数字の二つを引数としてメソッドに送る
# 2. その後、先頭のindexと末尾のindexの数字を定義する
# 3. さらに、先頭のindexの数字と末尾のindexの数字を足して2で割って、「真ん中の」indexの数字を定義する
# 4. もし真ん中のindexの中身の数字と、「探したい数字」が一致していた場合は、そのindexの数字をreturnする
# 5. もし真ん中のindexの中身の数字より、「探したい数字」の数が大きい場合、「探したい数字」は、真ん中よりも後ろにあることになるため、先頭のindexの数字を「真ん中+1」にする
# 6. もし真ん中のindexの中身の数字より、「探したい数字」の数が小さい場合、「探したい数字」は、真ん中よりも前にあることになるため、末尾のindexの数字を「真ん中-1」にする
# 7. それらの繰り返し処理を記述する
# 8. 繰り返し処理が無限ループにならないように、先頭のindexの数字が末尾のindexの数字を超えてしまったら、処理を終了させ、"None"を返すようにする

def binary_search(numbers, value)
  head = 0
  tail = numbers.size - 1
  while head <= tail
    center = ((head + tail) / 2.0).round
    number = numbers[center]
    if number == value
      return center
    elsif number < value
      head = center + 1
    else
      tail = center - 1
    end
  end
  "None"
end
# 「探したい数字」が含まれている配列
numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]
puts("numbers" + numbers.to_s) # 配列の値をターミナルに表示
puts('配列numbersから探したい数字を入力してください')
# 探したい数字を入力する
target_number = gets.to_i
# 数字をbinary_searchメソッドで探し、探した結果をputsで出力する
puts(binary_search(numbers,target_number))

# 解答例：
# def binary_search(numbers, value)
#   # 「配列の先頭のindex」を表すhead変数を定義する（初期値は0）
#   head = 0
#   # 「配列の末尾のindex」を表すtail変数を定義する（初期値は配列の個数-1）
#   tail = numbers.length - 1
#   # 「配列の先頭のindex」が「配列の末尾のindex」を超えない限り繰り返す
#   while head <= tail do
#     # 先頭のindexの数字と末尾のindexの数字を足して2で割って、
#     # 「真ん中の」indexの数字を定義する
#     center = ((head + tail) / 2.0).round
#     # 真ん中のindexの中身の数字が、「探したい数字」と一致しているかを確認する
#     if (numbers[center] == value)
#       # 一致していたらreturnする
#       return center
#     # 真ん中のindexの中身の数字が、「探したい数字」よりも小さかったら、
#     # 「探したい数字」は、真ん中よりも後ろにあることになるため、
#     # 先頭のindexの数字を「真ん中+1」にする
#     elsif (numbers[center] < value)
#       head = center + 1
#     # 真ん中のindexの中身の数字が、「探したい数字」よりも大きかったら、
#     # 「探したい数字」は、真ん中よりも前にあることになるため、
#     # 末尾のindexの数字を「真ん中-1」にする
#     else
#       tail = center - 1
#     end
#   end
#   # headがtailの数を超えても探したい数字がなかったら、その配列の中に探したい数字がない
#   # ということなので、Noneを返す
#   "None"
# end
