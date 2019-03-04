class Scrabble
def initialize(word)
  @word = word
end

def scorecard
  @ones = "AEIOULNRST"
  @twos = "DG"
  @threes = "BCMP"
  @fours = "FHVWY"
  @fives = "K"
  @eights = "JX"
  @tens = "QZ"
end

def score
  scorecard
  return 0 if @word == nil
  tally = 0
  @word.each_char do |char|
    tally += 1 if @ones.include?(char.upcase)
    tally += 2 if @twos.include?(char.upcase)
    tally += 3 if @threes.include?(char.upcase)
    tally += 4 if @fours.include?(char.upcase)
    tally += 5 if @fives.include?(char.upcase)
    tally += 8 if @eights.include?(char.upcase)
    tally += 10 if @tens.include?(char.upcase)
  end
tally
end


end
