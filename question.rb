# It will pick two numbers between 1 and 20 to generate the addition problems.
# It will check the answer

class Question
  attr_reader :question, :answer

  def initialize
    random_number1 = rand(1..20)
    random_number2 = rand(1..20)
    @question = "What does #{random_number1} plus #{random_number2} equal?"
    @answer = random_number1 + random_number2
  end
end