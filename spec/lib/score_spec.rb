require './lib/score'

describe Bowling::Score do
  it 'should return 0 when all results are 0' do
    score = Bowling::Score.new([0] * 20)
    expect(score.evaluate).to eq(0)
  end

  it 'should return 0 when there are no results' do
    score = Bowling::Score.new
    expect(score.evaluate).to eq(0)
  end

  it 'should return the sum of numbers inside it when String given' do
    score = Bowling::Score.new(['3', '5', 'pl', 4])
    expect(score.evaluate).to eq(12)
  end

  it 'should return sum of those numbers when numbers given' do
    score = Bowling::Score.new([1] * 20)
    expect(score.evaluate).to eq(20)
  end

end