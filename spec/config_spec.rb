require "spec_helper"

describe Dice::Config do
  it "have dices as 1 and sides as 6 as default" do
    dice = Dice.new
    Dice::Config.sides.should == 6
    Dice::Config.dices.should == 1
  end
  
  it "set dices and sides and result_type as requested" do
    dice = Dice.new(12,3)
    Dice::Config.sides.should == 12
    Dice::Config.dices.should == 3
    Dice::Config.array?.should be_false
  end
  
  it "set array to true" do
    dice = Dice.new(12,3, true)
    Dice::Config.sides.should == 12
    Dice::Config.dices.should == 3
    Dice::Config.array?.should be_true
  end
  
  it "raise ArgumentError if values are of wrong type" do
    lambda {Dice.new('12',3,true)}.should raise_error(ArgumentError)
    lambda {Dice.new(12,'3',true)}.should raise_error(ArgumentError)
    lambda {Dice.new(12,3,'true')}.should raise_error(ArgumentError)
  end
end