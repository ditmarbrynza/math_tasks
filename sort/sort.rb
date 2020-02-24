require 'pry'

class Sort

  ONE = '1'

  def sort(array)
    hash = self.hash(array)
    array = sort_by_units(array, hash)
  end

  private

  def sort_by_units(arr, hash)
    swap = true
    size = arr.length - 1
    while size != 0
      swap = false
      for i in 0...size
        x1 = arr[i]
        x2 = arr[i + 1]
        swap = hash[x1] > hash[x2]
        if hash[x1] > hash[x2]
          swap = true
        elsif hash[x1] == hash[x2]
          swap = arr[i] > arr[i + 1]
        else
          swap = false
        end
        arr[i], arr[i+1] = arr[i + 1], arr[i] if swap
      end
      size -= 1
    end
    arr
  end

  def hash(array)
    hash = {}
    array.each do |digit|
      units = calc_units(digit.to_s(2))
      hash[digit] = units
    end
    hash    
  end

  def calc_units(str)
    sum = 0
    array = str.split('')
    array.each do |sym|
      sum += 1 if sym == ONE
    end
    sum
  end

end

output = File.open("./output.txt", 'w+')
input = File.open("./input.txt", 'r+')
filedata = input.read.split("\n")
filedata.each do |str|
  sort = Sort.new
  arr = str.split(',')
  arr = arr.each_with_index { |sym, idx| arr[idx] = sym.to_i }
  result = sort.sort(arr)
  output.write("#{result}\n")
end 
output.close
input.close