class Solver
  def factorial(num)
    if num.zero?
      1
    elsif num.negative?
      raise 'Exception Created: Factorial ERROR Number is Negative'
    else
      num * factorial(num - 1)
    end
  end

  def fizzbuzz(num)
    fizz = (num % 3).zero?
    buzz = (num % 5).zero?
    fizz_buzz = (num % 3).zero? && (num % 5).zero?
    if fizz_buzz
      'fizzbuzz'
    elsif fizz
      'fizz'
    elsif buzz
      'buzz'
    else
      num.to_s
    end
  end

  def reverse(string)
    string.reverse
  end
end
