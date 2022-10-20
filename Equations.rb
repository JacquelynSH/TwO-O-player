
class Equations
    def initialize
      @num1 = rand(1..20)
      @num2 = rand(1..20)
      @sum = @num1 + @num2
    end

    def question
      puts "What does #{@num1} plus #{@num2} equal?"

    end

    def answer_true?(user_answer)
      @sum == user_answer
    end
end

