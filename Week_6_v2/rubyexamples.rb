#!/usr/bin/ruby

puts "helloe"
puts("hi there")

value = "blah"
items = [1,2,3,5,26,13,14]

puts("the value is " + value)

for item in items 
    puts(item)
end

# Block of code is executing for each output
items.each do | item |
    puts(item)
end

for i in 0.step(5)
    puts(item[i])
end

puts(items)

