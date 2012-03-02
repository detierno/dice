require "spec_helper"

describe Dice::Config do
  it "have dices as 1 and faces as 6 as default" do
    dice = Dice.new
    Dice::Config.faces.should == 6
    Dice::Config.dices.should == 1
  end
  
  it "set dices and faces as requested" do
    dice = Dice.new(12,3)
    Dice::Config.faces.should == 12
    Dice::Config.dices.should == 3
  end
end