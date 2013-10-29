multiples = []
num_range = (1..100).to_a

num_range.each do |num|
  if num % 3 == 0 && num % 5 == 0
    multiples << num
  elsif num % 3 == 0
    multiples << num
  elsif num % 5 == 0 
    multiples << num
  end
end

total_sum = multiples.inject(0) { |sum, num| sum + num }