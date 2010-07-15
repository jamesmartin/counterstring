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

describe CounterString do
    it "returns blank for empty constructor" do
      cs = CounterString.new
      cs.generate.should == ""
    end

    it "returns 1 for length 1" do
      cs = CounterString.new(1)
      cs.generate.should == "1"
    end

    it "returns 2* for length 2" do
      cs = CounterString.new(2)
      cs.generate.should == "2*"
    end

    it "returns 2*4 for length 3" do
      cs = CounterString.new(3)
      cs.generate.should == "2*4"
    end

    it "returns 2*4*6*8*1 for length 9" do
      cs = CounterString.new(9)
      cs.generate.should == "2*4*6*8*1"
    end

    it "returns 2*4*6*8*11* for length 11" do
      cs = CounterString.new(11)
      cs.generate.should == "2*4*6*8*11*"
    end

    it "returns 2*4..100* for length 100" do
      cs = CounterString.new(100)
      string = cs.generate
      string.size.should == 100
      string[96,99].should == "8*10"
    end

    it "returns 2*4...2048 for length 2047" do
      cs = CounterString.new(2047)
      string = cs.generate
      string.size.should == 2047
      string[2039,2046].should == "043*2048"
    end
end
