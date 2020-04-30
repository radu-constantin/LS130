def reduce(array, default = 0)
  counter = 0
	if array.all? {|el| el.class == String}
		acc = ''
	elsif array.all? {|el| el.class == Array}
		acc = []
	end

  while counter < array.size
    current_value = array[counter]
		acc = yield(acc, current_value)
		counter += 1
  end
  acc
end

array = [1, 2, 3, 4, 5]

#reduce(array) { |acc, num| acc + num }                    # => 15
#reduce(array, 10) { |acc, num| acc + num }
#reduce(array) { |acc, num| acc + num if num.odd? }

p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
