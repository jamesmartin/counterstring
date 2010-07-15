class CounterString
  def initialize(length=0)
    @length = length
    @position_marker = "*"
  end

  def generate
    if @length == 0
      return ""
    elsif @length == 1
      return "#{@length}"
    else
      output = "2" + @position_marker
      last_counter_digit = 2
      while output.size < @length
        # Figure out the next counter digit
        counter_digit = output.size + (last_counter_digit.to_s.size + 1)
        if counter_digit.to_s.size > last_counter_digit.to_s.size
          counter_digit += 1
        end
        token = counter_digit.to_s + @position_marker 
        remaining_length = @length - output.size
        if remaining_length < token.size + output.size 
          token = token[0,remaining_length]
        end
        output += token
        last_counter_digit = counter_digit 
      end
    end
    return output
  end
end
