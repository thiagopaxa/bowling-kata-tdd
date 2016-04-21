module Bowling
  class Score
    attr_reader :pins

    def initialize(pins = [0] * 20)
      @pins = pins
    end

    def evaluate
      first_in_row, row, score = [0, 0, 0]

      # require 'pry'; binding.pry

      while row < 10
        score += (pins[first_in_row].to_i + pins[first_in_row + 1].to_i)

        first_in_row += 2
        row += 1
      end

      score
    end
  end
end