require 'pry'

class CalorieCounter
  def initialize(input)
    @input = input
  end

  def normalize
    file = IO.readlines(@input).join("\n").split("\n\n\n\n")
    file = file.map do |elf|
      elf.split("\n\n").map(&:to_i)
    end.map(&:sum)

    @input = file.sort.reverse
  end

  def highest
    normalize
    @input.first
  end

  def top_three
    normalize
    @input[0] + @input[1] + @input[2]
  end
end