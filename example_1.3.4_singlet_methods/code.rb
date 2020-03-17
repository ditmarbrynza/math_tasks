str = "Hello, world!"
str2 = "str2"

def str.spell
  self.split("").join("-")
end

def str2.spell
  self.split("").join("+")
end

puts str.spell
puts str2.spell