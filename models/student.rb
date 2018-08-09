require_relative("../db/sqlrunner")

class Student

  attr_reader :first_name, :last_name, :house, :age

  def initialize(options)
    @id = options["id"].to_i()if options["id"]
    @first_name = options["first_name"]
    @last_name =options["last_name"]
    @house = options["house"]
    @age = options["age"]

  end

  def save()
    sql = "INSERT INTO students (first_name, last_name, house, age) VALUES ($1, $2, $3, $4) RETURNING id"
    values = [@first_name, @last_name, @house, @age]
    result = SqlRunner.run(sql, values).first
    @id = result["id"].to_i
  end

end
