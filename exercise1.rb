# 1. まずは文字列を引数として受け取るメソッドを作成する
# 2. その文字列をsplitなどを使用して、一つずつ区切る
# 3. 区切ったら、その区切った文字（配列）の個数分だけ繰り返し処理をする
# 4. 一回繰り返し処理が発生するごとに、+1されるcountを作成する
# 5. 繰り返し処理が終わった後に、そのcountを出力する


def count_letter(str)
  count = 0
  str.split("").each do # 処理ないで変数を使用しないので省略
    count += 1
  end
  count
end
p count_letter("abcde") # putsでもOK
