class MaxMultiplication

  DIGITS = ['1', '2', '3', '4', '5', '6', '7', '8', '9'].freeze
  COMPOSITION_RANGE = 4

  def max_multiplication(str)
    return nil unless str.is_a?(String)
    composition_array = []
    array = str.split('')
    array.each_with_index do |_, idx|
      if next_n_digit?(array, idx, COMPOSITION_RANGE) 
        composition = composition_next_n(array, idx, COMPOSITION_RANGE)
        composition_array.push(composition) if composition
      end
    end
    composition_array.max
  end

  private

  def composition_next_n(array, idx, n)
    composition = 1
    end_of_range = idx + n - 1
    for idx in idx..end_of_range
      composition = composition * array[idx].to_i
    end
    composition
  end

  def next_n_digit?(array, idx, n)
    digit = true
    end_of_range = idx + n - 1
    for idx in idx..end_of_range
      digit = digit && digit?(array[idx])
    end
    digit
  end

  def digit?(symbol)
    DIGITS.include?(symbol)
  end

end

output = File.open("./output.txt", 'w+')
input = File.open("./input.txt", 'r+')
filedata = input.read.split("\n")
filedata.each do |str|
  max_multiplication = MaxMultiplication.new
  result = max_multiplication.max_multiplication(str)
  if result == nil 
    output.write("nil\n")
  else
    output.write("#{result}\n")
  end
end 
output.close
input.close