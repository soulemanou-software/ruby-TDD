class Solver
  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end

  def factorial(num)
    return 1 if num.zero?

    num * factorial(num - 1)
  end

  def reverse(str)
    return str[0] if str.length == 1

    reverse(str.slice(1, str.length - 1)) + str[0]
  end
end
