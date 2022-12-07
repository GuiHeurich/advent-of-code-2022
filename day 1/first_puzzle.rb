require 'pry'

class CalorieCounter
  def initialize(input)
    @input = input
    normalize
  end

  def highest
    @input.first
  end

  def top_three
    @input[0] + @input[1] + @input[2]
  end

  private

  def normalize
    file = IO.readlines(@input).join("\n").split("\n\n\n\n")
    file = file.map do |elf|
      elf.split("\n\n").map(&:to_i)
    end.map(&:sum)

    @input = file.sort.reverse
  end
end