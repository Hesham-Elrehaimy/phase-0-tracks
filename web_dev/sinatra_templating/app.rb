# require gems
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sqlite3'
set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
	@students = db.execute("SELECT * FROM students")
	erb :home	
end



get '/students/new' do 
	erb :new_student
end
# create new students via
# a form
post '/students' do
	db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
	redirect '/'
end

get '/find' do
	@students_search = db.execute("SELECT * FROM students")
	erb :find
end

get '/delete' do
	erb :delete
end

post '/delete_students' do
	db.execute("DELETE FROM students WHERE name = ?", [params['name']])
	redirect '/'
end


# add static resources