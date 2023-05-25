require 'rspec'
require_relative 'solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  context 'When solver class is run' do
    context 'the factorial method' do
      it 'should return the factorial of the argument passed' do
        expect(@solver.factorial(5)).to eql 120
      end

      it 'should return an argument error when a negative value is passed' do
        expect { @solver.factorial(-2) }.to raise_error(ArgumentError, 'A negative error passed as an argument')
      end
    end

    context 'the reverse method' do
      it 'should reverse the word "ruby" to "ybur"' do
        expect(@solver.reverse('ruby')).to eql 'ybur'
      end
    end

    context 'the fizzbuzz method' do
      it 'should display fizz when argument is divisible by 3' do
        expect(@solver.fizzbuzz(3)).to eql 'fizz'
      end
      it 'should display buzz when argument is divisible by 5' do
        expect(@solver.fizzbuzz(5)).to eql 'buzz'
      end
      it 'should display fizzbuzz when argument is divisible by 3 and 5' do
        expect(@solver.fizzbuzz(15)).to eql 'fizzbuzz'
      end
      it 'should display argument when argument does not meet all conditions' do
        expect(@solver.fizzbuzz(7)).to eql 7
      end
    end
  end
end
