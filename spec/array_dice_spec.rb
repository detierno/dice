require 'spec_helper'

describe Dice do
  ROLLS = 300

  describe "new with default values as array" do

    describe ".roll" do
      let(:dice) { Dice.new(6,1,true) }

      it "return value between a array with one element" do
        ROLLS.times { expect(dice.roll.size).to eq 1 }
      end
    end

    describe ".roll_two" do
      let(:dice) { Dice.new(6,1,true) }

      it "return a array of 2 elements" do
        ROLLS.times do
          result = dice.roll_two
          result.size.should == 2
          result.class.should == Array
        end
      end

      it "and values are between 1 and 6" do
        ROLLS.times do
          result = dice.roll_two
          result.each do |item|
            1.upto(6).include?(item).should be_truthy 
          end
        end
      end

      it "cant return 0" do
        ROLLS.times do
          result = dice.roll_two
          result.each do |item|
            item.should_not < 1
          end
        end
      end

      it "cant be more then 6" do
        ROLLS.times do
          result = dice.roll_two
          result.each do |item|
            item.should_not > 6
          end
        end
      end
    end

    describe ".roll_d20" do
      let(:dice) { Dice.new(6,1,true) }

      it "return a array of 1 element" do
        ROLLS.times do
          result = dice.roll_d20
          result.size.should == 1
          result.class.should == Array
        end
      end

      it "return value between 1 to 20" do
        ROLLS.times do
          dice.roll_d20.each { |item| 1.upto(20).include?(item).should be_truthy }
        end
      end

      it "cant return 21" do
        ROLLS.times do
          dice.roll_d20.each { |item| item.should_not > 20 }
        end
      end
    end

    describe ".roll_two_d10" do
      let(:dice) { Dice.new(6,1,true) }

      it "return a array of 2 elements" do
        ROLLS.times do
          dice.roll_two_d10.size.should == 2
          dice.roll_two_d10.class.should == Array
        end
      end

      it "return value between 1 to 10" do
        ROLLS.times { dice.roll_two_d10.each { |item| 1.upto(10).include?(item).should be_truthy } }
      end
    end
  end

  describe "new with values of 12 sides with three dices as array" do

    describe ".roll" do
      let(:dice) { Dice.new(12,3,true) }

      it "return value between a array with three elements" do
        ROLLS.times { dice.roll.size.should == 3 }
      end
    end

    describe ".roll_two" do
      let(:dice) { Dice.new(12,3,true) }

      it "return a array of 2 elements" do
        ROLLS.times do
          result = dice.roll_two
          result.size.should == 2
          result.class.should == Array
        end
      end

      it "and values are between 1 and 12" do
        ROLLS.times do
          result = dice.roll_two
          result.each do |item|
            1.upto(12).include?(item).should be_truthy 
          end
        end
      end

      it "cant return 0" do
        ROLLS.times do
          result = dice.roll_two
          result.each do |item|
            item.should_not < 1
          end
        end
      end

      it "cant be more then 12" do
        ROLLS.times do
          result = dice.roll_two
          result.each do |item|
            item.should_not > 12
          end
        end
      end
    end

    describe ".roll_d20" do
      let(:dice) { Dice.new(12,3,true) }

      it "return a array of 1 element" do
        ROLLS.times do
          result = dice.roll_d20
          result.size.should == 3
          result.class.should == Array
        end
      end

      it "return value between 1 to 20" do
        ROLLS.times do
          dice.roll_d20.each { |item| 1.upto(20).include?(item).should be_truthy }
        end
      end

      it "cant return 21" do
        ROLLS.times do
          dice.roll_d20.each { |item| item.should_not > 20 }
        end
      end
    end

    describe ".roll_two_d10" do
      let(:dice) { Dice.new(12,3,true) }

      it "return a array of 2 elements" do
        ROLLS.times do
          dice.roll_two_d10.size.should == 2
          dice.roll_two_d10.class.should == Array
        end
      end

      it "return value between 1 to 10" do
        ROLLS.times { dice.roll_two_d10.each { |item| 1.upto(10).include?(item).should be_truthy } }
      end
    end
  end

end
