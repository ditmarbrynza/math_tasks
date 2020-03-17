x = "abc"
y = x

puts "x = #{x}"
puts "y = #{y}"
puts "x object_id: #{x.object_id}"
puts "y object_id: #{y.object_id}"

x.gsub!(/a/, "x")

puts ""

puts "x = #{x}"
puts "y = #{y}"
puts "x object_id: #{x.object_id}"
puts "y object_id: #{y.object_id}"


x = "abc"

puts ""

puts "x = #{x}"
puts "y = #{y}"
puts "x object_id: #{x.object_id}"
puts "y object_id: #{y.object_id}"


