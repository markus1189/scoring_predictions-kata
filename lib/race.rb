class Race

  class << self

    def score(guesses, result)
      points = 0
      guesses.zip(result).map { |guess, actual|
        guess == actual
      }.zip(scores) do |correct, score|
        correct && points += score
      end

      points
    end

    def scores
      [15,10,5,3,1]
    end

  end

end
