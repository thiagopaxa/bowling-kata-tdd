require './lib/score'

describe Bowling::Score do

  context 'when all results are 0' do
    let(:score) { Bowling::Score.new([0,0,0,0,0,0,0]) }

    it 'should return 0' do
      expect(score.evaluate).to eq(0)
    end
  end

  context 'when there are no results' do
    let(:score) { Bowling::Score.new }

    it 'should return 0' do
      expect(score.evaluate).to eq(0)
    end
  end

  context 'when String given' do
    let(:score) { Bowling::Score.new(['3', '5', 'pl', 4]) }

    it 'should return the sum of numbers inside it' do
      expect(score.evaluate).to eq(12)
    end
  end

  context 'when numbers given' do
    let(:score) { Bowling::Score.new([1, 2, 3, 4, 5]) }

    it 'should return sum of those numbers' do
      expect(score.evaluate).to eq(15)
    end
  end

end