class StringCalculator
  def self.add(input)   
    numbers = string_to_numbers(input)

    sum_of_numbers(numbers)
  end

  private 

  def self.string_to_numbers str
    delimiters = [",", "\n"]

    separate_line_index = str.index("//")
    if separate_line_index
      delimeter = str[separate_line_index + 2]
      delimiters << delimeter    
    end

    str.split(Regexp.union(delimiters))
  end

  def self.sum_of_numbers numbers
    sum = 0
    negative_numbers = []

    numbers.each do |num|
      number = num.to_i
      puts "NUmber: #{number.negative?}"
      if(number.negative?)
         negative_numbers.push(number)
         next
      end
      sum += number
    end

    raise "negative numbers not allowed: #{negative_numbers.join(",")}" unless negative_numbers.empty?
    sum
  end
end
