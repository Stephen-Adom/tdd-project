class Solver
  def factorial(number)
    return 1 if number.zero?
    raise ArgumentError, 'A negative error passed as an argument' if number.negative?

    result = 1
    (1..n).each do |num|
      result *= num
    end
    result
  end

  def reverse(word)
    word.chars.reverse.join
  end

  def fizzbuzz(number)
    if (number % 3).zero? && number % 5 != 0
      'fizz'

    elsif (number % 5).zero? && number % 3 != 0
      'buzz'

    elsif (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'

    else
      number
    end
  end
end
