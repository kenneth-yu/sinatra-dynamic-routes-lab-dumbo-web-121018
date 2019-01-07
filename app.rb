require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversed_user_name = params[:name].reverse
    "#{@reversed_user_name}"
  end

  get "/square/:number" do
    @answer = params[:number].to_i
    "#{@answer**2}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
      "#{@phrase}" * @number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word = params[:word1]+ " " + params[:word2]+ " " + params[:word3]+ " " + params[:word4]+ " " + params[:word5] +'.'
    "#{@word}"
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    if @operation == "add"
      @add = params[:number1].to_i + params[:number2].to_i
      "#{@add}"
    elsif @operation == "subtract"
      @subtract =  params[:number2].to_i - params[:number1].to_i
      "#{@subtract}"
    elsif @operation == "multiply"
      @multiply = params[:number1].to_i * params[:number2].to_i
      "#{@multiply}"
    else
      @divide = params[:number1].to_i / params[:number2].to_i
      "#{@divide}"
    end
  end


end
