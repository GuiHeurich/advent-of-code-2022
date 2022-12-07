require 'pry'

class RockPaperScissors
  def initialize(input)
    @input = IO.readlines(input)
  end

  def total
    calculate_result 
    @result_score.sum
  end

  private

  def calculate_result
    @result_score = []

    @input.each do |result|
      case result
      in "A Y\n"
        @result_score.push(4)
      in "A X\n"
        @result_score.push(3)
      in "A Z\n"
        @result_score.push(8)
      in "B Y\n"
        @result_score.push(5)
      in "B X\n"
        @result_score.push(1)
      in "B Z\n"
        @result_score.push(9)
      in "C Y\n"
        @result_score.push(6)
      in "C X\n"
        @result_score.push(2)
      in "C Z\n"
        @result_score.push(7)
      end
    end
  end
end