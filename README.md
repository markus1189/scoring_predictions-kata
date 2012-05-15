# The Scoring Predictions Kata

## Task

* Write a method that accepts two arguments: an Array of five guesses for
  finalists in a race and an Array of the five actual finalists.
* Each position in the lists matches a finishing position in the race, so first
  place corresponds to index 0.
* Return an Integer score of the predictions: 0 or more points.
* Correctly guessing first place is worth 15 points, second is worth 10, and on
  down with 5, 3, and 1 point for fifth place.
* It's also worth 1 point to correctly guess a racer that finishes in the top
  five, but have them in the wrong position.
