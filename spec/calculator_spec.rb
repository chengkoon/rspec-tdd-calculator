require_relative 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do
  before(:context) do
    # initialize calculator
    @my_calculator = Calculator.new(1)
  end

  # Tests go here
  describe "This is the initiailization part" do
    it "is an instance of the Calculator class" do
      expect(@my_calculator).to be_instance_of(Calculator)
    end
  end

  # Test for results
  describe "This is to test the result method" do
    it "should return the current result" do
      expect(@my_calculator.result).to eq(1)
    end


    it "current result must be read only" do
      expect(@my_calculator.result).to eq(1)
    end

    #reset
    it "should reset the calculator result to given input" do
      @my_calculator.reset(5)
      expect(@my_calculator.result).to eq(5)
    end

    #addition - normal case
    it "should add the input to the current calculator result" do
      @my_calculator.add(6)
      expect(@my_calculator.result).to eq(11)
    end
    #addition - negative input case
    it "should add the negative input to the current calculator result" do
      @my_calculator.add(-11)
      expect(@my_calculator.result).to eq(0)
    end
    #addition - invalid input case
    it "should return false if input is not an integer" do

      expect(  @my_calculator.add("i")).to eq(false)
    end
  end

# Test for Sub
describe "This is to test the Sub method" do
  #sub - normal case
  it "should substract the input to the current calculator result" do
    @my_calculator.substract(6)
    expect(@my_calculator.result).to eq(-6)
  end
  #sub - negative input case
  it "should add the negative input to the current calculator result" do
    @my_calculator.substract(-1)
    expect(@my_calculator.result).to eq(7)
  end
  #sub - invalid input case
  it "should return false if input is not an integer" do
    expect(  @my_calculator.substract("i")).to eq(false)
  end
end
end
