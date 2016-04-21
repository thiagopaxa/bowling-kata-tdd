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
    score = Bowling::Score.new(['3', '5', 'pl', 4] + [0] * 16)
    expect(score.evaluate).to eq(12)
  end

  it 'should return sum of those numbers when numbers given' do
    score = Bowling::Score.new([1] * 20)
    expect(score.evaluate).to eq(20)
  end

  it 'should calculate spare when a row equals 10' do
    score = Bowling::Score.new([8, 2, 5] + [0] * 17)
    expect(score.evaluate).to eq(20)
  end

  it 'should calculate strike when a single play equals 10' do
    score = Bowling::Score.new([10, 3, 4] + [0] * 16)
    expect(score.evaluate).to eq(24)
  end

  it 'should calculate a perfect game' do
    score = Bowling::Score.new([10] * 12)
    expect(score.evaluate).to eq(300)
  end
end