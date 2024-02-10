# Generate math questions for the game

class Question
  attr_reader :question, :answer # provide read only access to questions and answers

  def initialize
    # generate two random numbers from 1-20
    @num1 = rand(1..20)
    @num2 = rand(1..20)

    @question = "#{@num1} plus #{@num2} equals what?"
    @answer = @num1 + @num2


  end

end


