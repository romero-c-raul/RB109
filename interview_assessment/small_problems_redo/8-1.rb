=begin

ALGORITHM
- Slice through array starting from 1 to the size of the array
  - Add current slice to a collection

- Sum the collection

=end

def sum_of_sums(array)
  rolling_sum = []
  
  1.upto(array.size) do |length|
    rolling_sum << array[0, length].sum
  end
  
  rolling_sum.sum
end


p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35