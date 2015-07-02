# Implement your procedural solution here!


def find_fibonacci_numbers(limit)
  #make all the numbers an array
  array = [1, 2]
  
  while (array[-1] + array[-2]) < limit
    array << array[-1] + array[-2]
  end
  array
  
end

def even_fibonacci_sum(limit)
  #find sum of the even numbers of array
  numbers = find_fibonacci_numbers(limit)
  sum = 0
  numbers.each do |n|
    n.even? ? sum += n : sum += 0
  end
  sum
end