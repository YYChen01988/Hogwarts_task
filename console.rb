require_relative("db/sqlrunner.rb")
require_relative("models/student.rb")
require_relative("models/house.rb")

require ("pry")

student1 = Student.new({
"first_name" => "Craig",
"last_name" => "Bowditch",
"house" => "Slytherin",
"age" => 30
})
student1.save()

slytherin = House.new({
"name" =>"Slytherin"
})
slytherin.save()

gryffindor = House.new({
  "name" => "Gryffindor"
  })
gryffindor.save()

hufflepuff = House.new({
  "name" => "Hufflepuff"
  })
hufflepuff.save()

ravenclaw = House.new({
  "name" => "Ravenclaw"
  })
ravenclaw.save()


binding.pry
nil
