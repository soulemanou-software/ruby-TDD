require_relative '../solver'

describe 'TDD unit tests fot Solver class methods' do
  before(:each) do
    @solution = Solver.new
  end
  # Factorial Method unit tests
  context 'Unit test for factorial method' do
    it 'should return a factorial value for a positive integer' do
      factorial = @solution.factorial(8)
      expect(factorial).to eq(40_320)
    end
    it 'should return 1 if the value of n is zero' do
      factorial = @solution.factorial(0)
      expect(factorial).to eq(1)
    end
    it 'should raise a Runtime error if the value of n is a negative value' do
      expect { Solver.new.factorial(-1) }.to raise_error(RuntimeError)
    end
  end
  context 'test fizzbuzz method' do
    it 'should return fizzbuzzfor numbers divisible by both 5 and 3' do
      number = @solution.fizzbuzz(15)
      expect(number).to eq('fizzbuzz')
    end
    it 'should return fizz for numbers divisible by 3 only' do
      number = @solution.fizzbuzz(9)
      expect(number).to eq('fizz')
    end
    it 'should return buzz for numbers which are divisible by 5 only' do
      number = @solution.fizzbuzz(25)
      expect(number).to eq('buzz')
    end
    it 'should return the input number as a string if it is neither divisible by 3 nor 5' do
      number = @solution.fizzbuzz(2)
      expect(number).to eq('2')
    end
  end
  context 'test string reverse' do
    it 'should return the reverse of hello' do
      string = @solution.reverse('hello')
      expect(string).to eq('olleh')
    end
  end
end
