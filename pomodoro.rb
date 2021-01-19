# まず最初にライブラリ(gem)の`launchy`を読み込む
require 'launchy'
loop do
  # `Launchy.open`を使用して、引数として渡したURLをブラウザで開きます。
  Launchy.open( "https://www.youtube.com/watch?v=5CyU-y7-uog" )
  sleep(60 * 24)
  Launchy.open( "https://www.youtube.com/watch?v=N-MUOdrdmh0" )
  sleep(1224)
end
