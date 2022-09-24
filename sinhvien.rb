class Man
  attr_accessor :name, :gender, :hairColor, :height, :weight, :phone, :email

  def initialize(name, gender, height, weight, phone, email, hairColor)
    @name = name
    @gender = gender
    @height = height
    @weight = weight
    @phone = phone
    @email = email
    @hairColor = hairColor
  end

    def show
      print "\nHo ten: ", name
      print "\nGioi tinh: ", gender, " - Toc: ", hairColor
      print "\nChieu cao: ", height, " - Can nang: ", weight
      print "\nSDT: ", phone, " - Email: ", email
    end  
end

class Student < Man
    attr_accessor :id, :_class, :school, :grade

    def initialize(name, gender, height, weight, phone, email, hairColor, id, _class, school, grade)
      super(name, gender, height, weight, phone, email, hairColor)
      @id = id
      @class = _class
      @school = school
      @grade = grade
    end

    def show
      super
      print "\nID: ", id
      print "\nLop: ", _class, " - Truong: ", school
      print "\nDiem trung binh: ", grade
    end
end

std1 = Student.new("Nguyễn Thị Thu Thủy", "Male", 150, 50, "0123456789","thuthuyxh1311@gmail.com", "black", "1911505310266", "19T2", "SPKT", 8)
std2 = Student.new("Võ Xuân Phúc", "Male", 150, 50, "0123456789","thuthuyxh1311@gmail.com", "black", "1911505310266", "19T2", "SPKT", 9)
std3 = Student.new("Nguyễn Thị Thu Hà", "Male", 150, 52, "0123456789","thuthuyxh1311@gmail.com", "black", "1911505310266", "19T1", "SPKT", 7)
std4 = Student.new("Nguyễn Thị Thu  Hương", "Male", 150, 52, "0123456789","thuthuyxh1311@gmail.com", "black", "1911505310266", "19T1", "SPKT", 6)
std5 = Student.new("Nguyễn Thị Thu Dương", "Male", 150, 52, "0123456789","thuthuyxh1311@gmail.com", "black", "1911505310266", "19T1", "SPKT", 10)

std = [std1, std2, std3, std4, std5]

puts "DANH SACH CHUA SAP XEP"
std.each do |val|
  val.show
  puts "\n------"
end

std = std.sort_by!{|obj| obj.grade}

std = std.reverse

puts "DANH SACH DA SAP XEP"
std.each do |val|
  val.show
  puts "\n------"
end