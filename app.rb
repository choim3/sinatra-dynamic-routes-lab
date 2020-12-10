require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "Name reversed: #{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num * @num
    "#{@num} squared is: #{@square.to_s}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
      "#{@phrase} " * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    [@word1, @word2, @word3, @word4, @word5].join(" ") + (".")
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @final

    case @op
    when "add"
      @final = @num1 + @num2
    when "subtract"
      @final = @num1 - @num2
    when "multiply"
      @final = @num1 * @num2
    when "divide"
      @final =  @num1 / @num2
    end

    "Your answer is: #{@final}".to_s
  end

end
