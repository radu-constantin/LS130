def compute(arg)
  block_given? ? yield(arg) : 'Does not compute.'
end



puts compute(5) { |n| n + 3 } == 8
puts compute('argument') {|n| n + 'b' }
puts compute(9) == 'Does not compute.'
