require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    reversed = @name.reverse
    "#{reversed}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    squared = @num * @num
    "#{squared}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @num.times do
      @string += "#{@phrase}"
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    #binding.pry
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation] == "add"
      added = @num1 + @num2
      "#{added}"
    elsif params[:operation] == "subtract"
      subtracted = @num1 - @num2
      "#{subtracted}"
    elsif params[:operation] == "multiply"
      multiplied = @num1 * @num2
      "#{multiplied}"
    elsif params[:operation] == "divide"
      divided = @num1 / @num2
      "#{divided}"
    end
  end
end
