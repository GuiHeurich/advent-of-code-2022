require_relative 'puzzle'

describe CampCleaner do
  let(:test_input) { File.new("/home/guilhermeorlandiniheurich/Projects/advent-2022/day 4/test_input.txt") }
  let(:subject) { CampCleaner.new(test_input)}

  context "when given a list of assignments" do
    # Test input:
    # 14-38,14-14
    # 2-10,3-55
    # 36-90,36-46
    # 9-97,8-87
    # 75-92,51-92
    # 6-82,1-83
    # 
    # 1 0 1 0 1 1
    
    it "calculates which pair completely overlaps the other" do
      expect(subject.count_overlaps).to eq 4
    end
  end

  context "when given a list of items" do
    # Test input:
    # 14-38,14-14
    # 2-10,3-55
    # 36-90,36-46
    # 9-97,8-87
    # 75-92,51-92
    # 6-82,1-83
    # 1-5, 7-10
    # 
    # 1 1 1 1 1 1 0

    it "calculates which pair simply overlaps the other" do
      expect(subject.partial_overlap).to eq 6
    end
  end
end