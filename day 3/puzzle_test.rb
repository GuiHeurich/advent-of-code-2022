require_relative 'puzzle'

describe RucksackOrganizer do
  # Test input:
  # lDDWVvlVVQfDMlWjGJTRjQCgTGLCLj
  # ZLZpwzLBhwZhSLBsjntGCtgJRjbnJgSG
  # qppdZzzsdsmZphrNsNwZhllDHLcVVDWFPvFWcWdFlv
  # 
  # Q S d 43 45 4


  let(:test_input) { File.new("/home/guilhermeorlandiniheurich/Projects/advent-2022/day 3/test_input.txt") }
  let(:subject) { RucksackOrganizer.new(test_input)}

  context "when given a list of items" do
    it "calculates the sum of priorities" do
      expect(subject.sum).to eq 92
    end
  end

  context "when given a list of items" do
    it "calculates the sum of priorities across three lines" do
      expect(subject.sum_three).to eq 38
    end
  end
end