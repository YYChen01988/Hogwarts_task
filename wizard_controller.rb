require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('models/student.rb')
also_reload("models/*")

get '/hogwarts/wizards' do
  @students = Student.all()
  erb(:index)
end

get '/hogwarts/wizards/new' do
  erb(:new)
end

post '/hogwarts/wizards' do
  @students = Student.new(params)
  @students.save()
  erb(:create)
end
