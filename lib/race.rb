class Race

  def initialize guesses, actual
    @guesses = guesses
    @actual = actual
  end

  def score
    score_correct_positions + score_incorrect_positions
  end

  def score_correct_positions
    @guesses.zip(@actual).map { |guess, actual|
      guess == actual
    }.zip(scores).inject(0) do |points, (correct, score)|
      correct ? points + score : points
    end
  end

  def score_incorrect_positions
    @guesses.zip(@actual).inject(0) do |points, (guess, actual)|
      points += 1 if guess != actual && @actual.include?(guess)
      points
    end
  end

  def scores
    [15,10,5,3,1]
  end

  def self.score(guesses, actual)
    new(guesses, actual).score
  end

end
