require_relative 'first_puzzle'

describe CalorieCounter do
  let(:calories_list) { File.new("/home/guilhermeorlandiniheurich/Projects/advent-2022/day 1/test_input.txt") }
  let(:subject) { CalorieCounter.new(calories_list) }

  context "when giving a list of calories caried by elves" do
    it "returns the highest number of calories" do
      expect(subject.highest).to eq 3000
    end
  end

  context "#top_three" do
    it "returns the total of the top three" do
      expect(subject.top_three).to eq 6000
    end
  end
end