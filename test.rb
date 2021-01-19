# class School
#   def name=(value)
#     @name = value
#   end
#   def name
#     @name
#   end
# end
# school = School.new
# school.name = "A学校"
# puts(school.name)


# class School
#   attr_accessor :name, :address
# end
# a_school = School.new
# a_school.name = "A学校"
# a_school.address = "渋谷区"
# puts(a_school.name)
# puts(a_school.address)
# b_school = School.new
# b_school.name = "B学校"
# b_school.address = "新宿区"
# puts(b_school.name)
# puts(b_school.address)

class School
  attr_accessor :name, :address
  def initialize(name,address)
    @name = name
    @address = address
  end
end
a_school = School.new("A学校", "渋谷区")
puts(a_school.name)
puts(a_school.address)
puts(a_school.instance_variables)
