require_relative 'fizz_buzz'

describe 'process' do

  context 'should return num when the number is not divisible both' do
    it { expect(process(1, 3, 5)).to eq 1 }
  end
  
  context 'should return FizzBuzz when the number is divisible both' do
    it { expect(process(15, 3, 5)).to eq 'FizzBuzz' }
  end

  context 'should return Fizz when the number is only divisible 3' do
    it { expect(process(9, 3, 5)).to eq 'Buzz' }
  end
  
  context 'should return Buzz when the number is only divisible 5' do
    it { expect(process(5, 3, 5)).to eq 'Fizz' }
  end

end