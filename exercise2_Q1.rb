# 問１ リピートワードアルゴリズム
# 出力結果が以下になるように雛形を参考にしてrepeat_stringメソッドを定義
# repeat_string('Python')→ PythPythPyth
# repeat_string('Go')→ GoGoGo
# repeat_string('C++')→ C++C++C++
# repeat_string('Java')→ JavaJavaJava
# repeat_string('Scala')→ ScalScalScal
# repeat_string('JavaScript')→ JavaJavaJava

def repeat_string(str)
  puts str[0,4]*3
end
repeat_string('Python')
repeat_string('Go')
repeat_string('C++')
repeat_string('Java')
repeat_string('Scala')
repeat_string('JavaScript')
