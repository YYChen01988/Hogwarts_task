require_relative("db/sqlrunner.rb")
require_relative("models/student.rb")
require_relative("models/house.rb")

require ("pry")

Student.delete_all()
House.delete_all()


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

student1 = Student.new({
"first_name" => "Craig",
"last_name" => "Bowditch",
"house_id" => slytherin.id,
"age" => 30
})
student1.save()

student2 = Student.new({
"first_name" => "Tina",
"last_name" => "Turner",
"house_id" => hufflepuff.id,
"age" => 56
})
student2.save()


binding.pry
nil
