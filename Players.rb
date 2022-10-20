
class Players
  attr_accessor :name, :lives
    def initialize(name) 
      @name = name
      @lives = 3
    end

    def reduce_life
      @lives -=1
    end

    def lose
      @lives == 0
    end

  


    def ask_question 
      ask = Equations.new
      ask.question
        print "> "
        @user_answer = gets.chomp.to_i
      if ask.answer_true?(@user_answer)
        puts "NAILED IT!n"
      else
        puts "OH NO"
        reduce_life
      end

    end
end



  



