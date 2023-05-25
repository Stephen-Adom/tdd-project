class Solver
  def factorial(n)
    return 1 if n.zero?
    return ArgumentError.new('A negative error passed as an argument') if n.negative?

    result = 1
    (1..n).each do |num|
      result *= num
    end
    result
  end

  def reverse(word)
    word.chars.reverse.join
  end

  def fizzbuzz(n)
    if (n % 3).zero? && n % 5 != 0
      'fizz'

    elsif (n % 5).zero? && n % 3 != 0
      'buzz'

    elsif (n % 3).zero? && (n % 5).zero?
      'fizzbuzz'

    else
      n
    end
  end
end
