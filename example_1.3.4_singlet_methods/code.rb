# frozen_string_literal: true

str = 'Hello, world!'
str2 = 'str2'

def str.spell
  split('').join('-')
end

def str2.spell
  split('').join('+')
end

puts str.spell
puts str2.spell
