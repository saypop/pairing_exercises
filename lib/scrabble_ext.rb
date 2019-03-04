class Scrabble
def initialize(word)
  @word = word
  puts "Is this a single, double or triple word score? Enter '1', '2' or '3': "
  @word_multiplier = gets.chomp.to_i
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
    puts "Is '#{char.upcase}' a single, double or triple letter score? Enter '1', '2' or '3': "
    letter_multiplier = gets.chomp.to_i
    tally += 1*letter_multiplier if @ones.include?(char.upcase)
    tally += 2*letter_multiplier if @twos.include?(char.upcase)
    tally += 3*letter_multiplier if @threes.include?(char.upcase)
    tally += 4*letter_multiplier if @fours.include?(char.upcase)
    tally += 5*letter_multiplier if @fives.include?(char.upcase)
    tally += 8*letter_multiplier if @eights.include?(char.upcase)
    tally += 10*letter_multiplier if @tens.include?(char.upcase)
  end
tally*@word_multiplier
end

end

print "What is your word? "
word = gets.chomp
scrabble = Scrabble.new(word)
puts scrabble.score
