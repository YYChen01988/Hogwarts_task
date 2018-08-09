require_relative("db/sqlrunner.rb")
require_relative("models/student.rb")
require_relative("models/house.rb")

require ("pry")

Student.delete_all()
House.delete_all()


slytherin = House.new({
"name" =>"Slytherin",
"logo" => "<img src='https://vignette.wikia.nocookie.net/harrypotter/images/d/d3/0.61_Slytherin_Crest_Transparent.png/revision/latest/scale-to-width-down/700?cb=20161020182557' style = 'width:300px;height:300px'>"
})
slytherin.save()

gryffindor = House.new({
  "name" => "Gryffindor",
  "logo" => "<img src='https://vignette.wikia.nocookie.net/harrypotter/images/8/8e/0.31_Gryffindor_Crest_Transparent.png/revision/latest/scale-to-width-down/700?cb=20161124074004' style = 'width:300px;height:300px'>"
  })
gryffindor.save()

hufflepuff = House.new({
  "name" => "Hufflepuff",
  "logo" => "<img src='https://vignette.wikia.nocookie.net/harrypotter/images/5/50/0.51_Hufflepuff_Crest_Transparent.png/revision/latest/scale-to-width-down/700?cb=20161020182518' style = 'width:300px;height:300px'>"
  })
hufflepuff.save()

ravenclaw = House.new({
  "name" => "Ravenclaw",
  "logo" => "<img src='https://vignette.wikia.nocookie.net/harrypotter/images/2/29/0.41_Ravenclaw_Crest_Transparent.png/revision/latest/scale-to-width-down/700?cb=20161020182442' style = 'width:300px;height:300px'>"
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
