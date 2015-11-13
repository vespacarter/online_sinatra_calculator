require "sinatra"
require_relative "./lib/calculator.rb"

get "/" do
	erb(:mainmenu)
end

post "/calculate" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  operation = params[:operation]
  result = Calculator.new(first,second,operation).calculate
  "#{first} #{operation} #{second} = #{result}"
end