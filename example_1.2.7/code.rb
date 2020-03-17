begin
  puts "Enter digit"
  digit = gets
  exit if digit.nil? || digit.empty?
  digit = digit.chomp.to_i
  x = Math.sqrt(100/digit)
  puts "x = #{x}"
rescue ArgumentError
  puts "Ошибка извлечения квадратного корня"
rescue ZeroDivisionError
  puts "Ошибка деления на 0"
retry
ensure
  x = x + 1
  puts "Ensure x + 1 = #{x}"
end
