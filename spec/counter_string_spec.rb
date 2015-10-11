require_relative '../lib/counter_string'

describe CounterString do
  before(:each) do
    @cs = CounterString.new
  end
    it "returns blank for no arguments" do
      @cs.generate.should == ""
    end

    it "returns 1 for length 1" do
      @cs.generate(1).should == "1"
    end

    it "returns 2* for length 2" do
      @cs.generate(2).should == "2*"
    end

    it "returns 2*4 for length 3" do
      @cs.generate(3).should == "2*4"
    end

    it "returns 2*4*6*8*1 for length 9" do
      @cs.generate(9).should == "2*4*6*8*1"
    end

    it "returns 2*4*6*8*11* for length 11" do
      @cs.generate(11).should == "2*4*6*8*11*"
    end

    it "returns 2*4..10 for length 100" do
      string = @cs.generate(100)
      string.size.should == 100
      string[96,99].should == "8*10"
    end

    it "returns 2*4...2048 for length 2047" do
      string = @cs.generate(2047)
      string.size.should == 2047
      string[2039,2046].should == "043*2048"
    end
end
