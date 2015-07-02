def find_fibonacci_numbers(limit)
  array = [1, 2]
  while (array[-1] + array[-2]) < limit
    array << array[-1] + array[-2]
  end
  array
end

def even_fibonacci_sum(limit)
  find_fibonacci_numbers(limit).select{|n| n.even?}.inject(:+) 
end