require 'stringio'

describe "CounterString CLI" do
  before(:each) do
    $stdout = StringIO.new
  end

  it "should copy the counterstring to clipboard" do
    system("ruby lib/counter_string_cli.rb 10")

    if RUBY_PLATFORM =~ /mswin/
      expect(IO.popen('paste', 'r+').read).to eq("2*4*6*8*11\n")
    else
      expect(IO.popen('pbpaste', 'r+').read).to eq("2*4*6*8*11\n")
    end
  end

  it "should print the counterstring to the command line" do
    expect(IO.popen("ruby lib/counter_string_cli.rb 14").read).to eq("2*4*6*8*11*14*\n")
  end

  it "should print an error when there are no arguments" do
    expect(IO.popen("ruby lib/counter_string_cli.rb").read).to eq("Please specify the string length\n")
  end
end
