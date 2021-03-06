require_relative("../db/sqlrunner")


class Student

  attr_reader :first_name, :last_name, :house_id, :age, :id

  def initialize(options)
    @id = options["id"].to_i()if options["id"]
    @first_name = options["first_name"]
    @last_name =options["last_name"]
    @house_id = options["house_id"].to_i
    @age = options["age"]

  end

  def save()
    sql = "INSERT INTO students (first_name, last_name, house_id, age) VALUES ($1, $2, $3, $4) RETURNING id"
    values = [@first_name, @last_name, @house_id, @age]
    result = SqlRunner.run(sql, values).first
    @id = result["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run(sql)
    result = students.map{|student| Student.new(student)}
    return result
  end

  def self.find_by_id(id)
    sql = " SELECT * FROM students WHERE id=$1"
    values = [id]
    result = SqlRunner.run(sql, values).first
    return Student.new(result)
  end

  def self.delete_all()
    sql = "DELETE FROM students"
    SqlRunner.run(sql)
  end

  def house()
    sql = "SELECT * FROM houses WHERE id=$1"
    values = [@house_id]
    result = SqlRunner.run(sql, values).first
    return House.new(result)
  end

end
