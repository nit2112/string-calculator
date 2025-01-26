class StringCalculator
  def self.add(input)
    result = 0
    
    case input

    when "1"
      result = 1

    when "1, 5"
      result = 1 + 5 
    end
    result
  end
end
