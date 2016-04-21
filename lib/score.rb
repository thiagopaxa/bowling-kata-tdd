module Bowling
  class Score
    attr_reader :pins, :first_in_row

    def initialize(pins = [0] * 20)
      @pins = pins.map { |p| p.to_i }
      @first_in_row = 0
    end

    def evaluate
      row, score = [0, 0]

      while row < 10

        if spare?
          score += spare_result
          @first_in_row += 2
        elsif strike?
          score += strike_result
          @first_in_row += 1
        else
          score += row_result
          @first_in_row += 2
        end

        row += 1
      end

      score
    end

    private

      def spare?
        row_result == 10
      end

      def strike?
        pins[first_in_row] == 10
      end

      def spare_result
        row_result + pins[first_in_row + 2]
      end

      def strike_result
        pins[first_in_row] + pins[first_in_row + 1] + pins[first_in_row + 2]
      end

      def row_result
        pins[first_in_row] + pins[first_in_row + 1]
      end
  end
end