require_relative 'app'
require 'sequel'
connection_string = 'postgres://gschool_user:password@localhost/tasks_development'
DB = Sequel.connect(ENV["DATABASE_URL"] || connection_string)
run App