# 作成した School クラスからインスタンス（オブジェクト）を作成
class School
  attr_accessor :name,
                :address,
                :number_of_students,
                :founding_years,
                :introduction_video_url,
                :introduction_statement
  def initialize(name, address, number_of_students,founding_years,
                 introduction_video_url,introduction_statement)
    @name = name
    @address = address
    @number_of_students = number_of_students
    @founding_years = founding_years
    @introduction_video_url = introduction_video_url
    @introduction_statement = introduction_statement
  end
  def introduction_video
    require 'launchy'
    Launchy.open("#{@introduction_video_url}")
  end
end
a_school = School.new("A学校", "東京都渋谷区..", 300, 100,
                      "https://diveintocode.jp/", "A学校は自然豊かな...")
a_school.introduction_video
b_school = School.new("B学校", "東京都新宿区..", 500, 30, "https://codezine.jp/article/detail/12147", "B学校は文武両立で...")
b_school.introduction_video
# puts(a_school.name)
# puts(a_school.address)
# puts(a_school.number_of_students)
# puts(a_school.founding_years)
# puts(a_school.introduction_video_url)
# puts(a_school.introduction_statement)
# puts(a_school.instance_variables)
# a_school.sample_instance_method
