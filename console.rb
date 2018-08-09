require_relative("db/sqlrunner.rb")
require_relative("models/student.rb")
require ("pry")

student1 = Student.new({
"first_name" => "Craig",
"last_name" => "Bowditch",
"house" => "Slytherin",
"age" => 30
})

student1.save()

binding.pry
nil
