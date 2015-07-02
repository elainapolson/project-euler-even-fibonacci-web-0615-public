# Implement your object-oriented solution here!

class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def find_fibonacci_numbers
    #make all the numbers an array
    array = [1, 2]
    while (array[-1] + array[-2]) < @limit
      array << array[-1] + array[-2]
    end
    array
  end

  def sum
    numbers = find_fibonacci_numbers
    sum = 0
    numbers.each do |n|
      n.even? ? sum += n : sum += 0
    end
    sum
  end

end