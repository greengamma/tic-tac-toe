taken_arr = Array.new # collect the chosen field positions
field_pos = 0

puts taken_arr.empty?
p taken_arr
#puts "Invalid number. Please enter one of the remaining numbers!"
taken_arr.push(2)
puts taken_arr.empty?
p taken_arr

puts taken_arr.include? 2
