class CounterString
  def initialize()
    @position_marker_character = "*"
    @output = ""
  end

  def generate(length=0)
	length = length.to_i
    if length == 0
      return ""
    elsif length == 1
      return "#{length}"
    else
      @output = "2" + @position_marker_character
      last_position_number = 2
      while @output.size < length
        position_number = @output.size + (last_position_number.to_s.size + 1)
        if position_number.to_s.size > last_position_number.to_s.size
          position_number += 1
        end
        token = position_number.to_s + @position_marker_character 
        remaining_length = length - @output.size
        if remaining_length < token.size + @output.size 
          token = token[0,remaining_length]
        end
        @output += token
        last_position_number = position_number 
      end
    end
    return @output
  end

end
