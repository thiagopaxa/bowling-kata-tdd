module Bowling
  class Score
    attr_reader :results

    def initialize(results = [])
      @results = results
    end

    def evaluate
      @results.inject(0){ |r, x| r.to_i + x.to_i}
    end
  end
end