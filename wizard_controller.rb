require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('models/student.rb')
also_reload("models/*")

get '/hogwarts/wizards' do
  @students = Student.all()
  erb(:index)
end
