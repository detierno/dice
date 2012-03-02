require 'spec_helper'

describe Dice do
  
  describe "new with default values" do
    
    describe ".roll" do
      let(:dice) { Dice.new }

      it "return value between 1 to 6" do
        1.upto(6).include?(dice.roll).should be_true
      end
    end
    
    describe ".roll_two" do
      let(:dice) { Dice.new }

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
    
    describe ".roll_d20" do
      let(:dice) { Dice.new }

      it "return value between 1 to 20" do
        30.times { 1.upto(20).include?(dice.roll_d20).should be_true }
      end
      
      it "cant return 21" do
        30.times { dice.roll_two.should_not > 20 }
      end
    end
    
    describe ".roll_two_d10" do
      let(:dice) { Dice.new }

      it "return value between 1 to 10" do
        30.times { 2.upto(20).include?(dice.roll_two_d10).should be_true }
      end
      
      it "can be less than 2" do
        30.times { dice.roll_two_d10.should_not < 2 }
      end
      
      it "cant return 21" do
        30.times { dice.roll_two.should_not > 20 }
      end
    end
     
  end
  
end