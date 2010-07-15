$: << "../lib"
require 'CounterString'

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
