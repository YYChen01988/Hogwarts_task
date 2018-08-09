require_relative("../db/sqlrunner")

class House
  attr_reader :name, :id

  def initialize(options)
    @id = options["id"].to_i()if options["id"]
    @name = options["name"]
  end

  def save()
    sql = "INSERT INTO houses (name) VALUES ($1) RETURNING id"
    values = [@name]
    result = SqlRunner.run(sql, values).first
    @id = result["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    result = houses.map{|house| House.new(house)}
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end

  def self.find_by_id(id)
    sql = " SELECT * FROM houses WHERE id=$1"
    values = [id]
    result = SqlRunner.run(sql, values).first
    return House.new(result)
  end
end
