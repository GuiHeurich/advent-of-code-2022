require 'pry'

class CampCleaner
  def initialize(input)
    @input = IO.readlines(input)
  end

  def count_overlaps
    counter = 0

    @input.each do |section|
      section = section.split(",")
      left = section[0].split("-").map(&:to_i)
      right = section[1].split("-").map(&:to_i)
      
      if left[0] <= right[0] || left[1] >= right[1]
        counter += 1
      elsif right[0] <= left[0] || right[1] >= left[1]
        counter += 1
      end
    end

    counter
  end

  def partial_overlap
    counter = 0

    @input.each do |section|
      section = section.split(",")
      left = section[0].split("-").map(&:to_i)
      right = section[1].split("-").map(&:to_i)

      left_range = Range.new(left[0], left[1]).to_a
      right_range = Range.new(right[0], right[1]).to_a
      
      if left_range.intersection(right_range) != []
        counter += 1
      end
    end
    counter
  end
end