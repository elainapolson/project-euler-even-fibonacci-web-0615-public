class EvenFibonacci

  def initialize(limit)
    @limit = limit
    @array = [1,2]
  end

  def add_terms
    @array[-1] + @array[-2]
  end

  def find_fibonacci_numbers
    while add_terms < @limit
      @array << add_terms
    end
    @array
  end

  def sum
    find_fibonacci_numbers.inject(0) do |sum, n|
      n.even? ? sum + n : sum + 0
    end
  end

end