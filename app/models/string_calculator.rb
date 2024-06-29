class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /[,\n]/
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[(numbers.index("\n") + 1)..-1]
    end

    numbers_arr = numbers.split(delimiter).map(&:to_i)
    negative_numbers = numbers_arr.select { |num| num.negative? }

    raise "negative numbers not allowed: #{negative_numbers.join(',')}" if negative_numbers.any?

    numbers_arr.sum
  end
end