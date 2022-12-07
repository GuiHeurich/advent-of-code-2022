require_relative 'puzzle'

describe RockPaperScissors do
  # Guide
  # A (rock)     Y (paper)
  # B (paper)    X (rock)
  # C (scissors) Z (scissors)

  # Rules
  # if A .. Y = 8
  # if A .. X = 4
  # if A .. Z = 3
  # if B .. Y = 5
  # if B .. X = 1
  # if B .. Z = 9
  # if C .. Y = 2
  # if C .. X = 7
  # if C .. Z = 6

  # Test input total score
  # B Y 5
  # A X 4
  # B Y 5
  # A Y 8
  # A Z 3
  # B Y 5
  # B Z 9
  # C Y 2
  # ....41

  context "when given a list of result" do
    let(:test_result_list) { File.new("/home/guilhermeorlandiniheurich/Projects/advent-2022/day 2/test_input.txt") }
    let(:subject) { RockPaperScissors.new(test_result_list) }

    xit "calculates the total score" do
      expect(subject.total).to eq 41
    end
  end

# Changed Guide
# A (rock)     Y (draw) => rock
# B (paper)    X (lose) => rock
# C (scissors) Z (win) => rock

# Rules
# if A .. Y = 4
# if A .. X = 3
# if A .. Z = 8

# if B .. Y = 5
# if B .. X = 1
# if B .. Z = 9

# if C .. Y = 6
# if C .. X = 2
# if C .. Z = 7

# Test input total score
# B Y 5
# A X 1
# B Y 5
# A Y 4
# A Z 7
# B Y 5
# B Z 9
# C Y 6
# ....42

  context "when given new criteria" do
    let(:test_result_list) { File.new("/home/guilhermeorlandiniheurich/Projects/advent-2022/day 2/test_input.txt") }
    let(:subject) { RockPaperScissors.new(test_result_list) }

  it "calculates the total score" do
      expect(subject.total).to eq 42
    end
  end
end