module Race
  module_function

  SCORES = [15,10,5,3,1]
  MISPLACED = 1

  def score(guesses, actuals, scores=SCORES, misplaced=MISPLACED)
    guesses.zip(actuals, scores).inject(0) do |result, (guess, actual, score)|
      if guess == actual
        result + score
      elsif actuals.include? guess
        result + misplaced
      else
        result
      end
    end
  end

end

# after reading the practicing ruby issue:
# http://practicingruby.com/articles/58
# - module_function
# - zip with more than one argument
