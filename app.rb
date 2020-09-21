require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
    #renders the name backwards
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
    #renders the square of the number
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end
    #repeats the phrase n times

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{(@word1 + @word2 + @word3 + @word4 + @word5).join(" ")}"
    #concatenates the words and adds a period
  end

  get '/:operation/:number1/:number2' do
    #adds two numbers together
    #subtracts the second number from the first
    #multiplies two numbers together
    #divides the first number by the second number
  end

end
