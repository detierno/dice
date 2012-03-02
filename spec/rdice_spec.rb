require 'spec_helper'

describe Rdice do
  let(:dice) { Rdice.new }
  
  describe "new" do
    it "roll one dice" do
      1.upto(6).include?(dice.roll).should be_true
    end
  end
  
  describe "new with 2 dices" do
    it "return value between 2 to 12" do
      2.upto(12).include?(dice.roll_two).should be_true
    end
    
    it "cant return 1" do
      30.times { 2.upto(12).include?(dice.roll_two).should_not == 1 }
    end
    
    it "cant be lesser then 2" do
      30.times { dice.roll_two.should_not < 2 }
    end
    
    it "cant return 13" do
      30.times { dice.roll_two.should_not > 13 }
    end
  end

end