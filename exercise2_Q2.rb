# 問１ HogeHogeアルゴリズム
# １から４０までの数字の中で、３の倍数と３のつく数字だけHogeと出力されるアルゴリズムを作成
# 出力結果が以下になっていればOK
# 1
# 2
# Hoge
# 4
# 5
# Hoge
# 7
# 8
# Hoge
# 10
# 11
# Hoge
# Hoge
# 14
# Hoge
# 16
# 17
# Hoge
# 19
# 20
# Hoge
# 22
# Hoge
# Hoge
# 25
# 26
# Hoge
# 28
# 29
# Hoge
# Hoge
# Hoge
# Hoge
# Hoge
# Hoge
# Hoge
# Hoge
# Hoge
# Hoge
# 40

# １から４０までが格納された配列を作成
# numbers = []
# number = 0
# 40.times do
#   count += 1
#   numbers.push(count)
# end

def hoge(numbers)
  numbers.each do |number|
    if number % 3 == 0 || number.to_s.include?("3")
      puts "Hoge"
    else
      puts "#{number}"v # numberだけでも同じ結果になるが可読性が良いので式展開で記述
    end
  end
end
hoge(1..40)
