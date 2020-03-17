print "Введите температуру и шкалу (C or F): "
str = gets
exit if str.nil? or str.empty?
str.chomp!
temp, scale = str.split(" ")

abort "#{temp} недопустимое чисто." if temp !~ /-?\d+/

temp = temp.to_f
case scale
  when "C", "c"
    f = 1.8 * temp + 32
  when "F", "f"
    c = (5.0/9.0) * (temp - 32)
else
  abort "Необходимо задать C или F."
end

if f.nil?
  print "#{c} градусов С\n"
else
  print "#{f} градусов F\n"
end
