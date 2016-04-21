module Bowling
  class Score
    attr_reader :pins

    def initialize(pins = [])
      @pins = pins
    end

    def evaluate
      @pins.inject(0){ |r, x| r.to_i + x.to_i}
    end
  end
end