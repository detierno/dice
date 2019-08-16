require 'spec_helper'


describe Dice do
  NTIMES = 300

  describe "new with default values" do

    describe ".roll" do
      let(:dice) { Dice.new }

      it "return value between 1 to 6" do
        NTIMES.times { 1.upto(6).include?(dice.roll).should be_truthy }
      end
    end

    describe ".roll_two" do
      let(:dice) { Dice.new }

      it "return value between 2 to 12" do
        NTIMES.times { 2.upto(12).include?(dice.roll_two).should be_truthy }
      end

      it "cant return 1" do
        NTIMES.times { 2.upto(12).include?(dice.roll_two).should_not == 1 }
      end

      it "cant be lesser then 2" do
        NTIMES.times { dice.roll_two.should_not < 2 }
      end

      it "cant return 13" do
        NTIMES.times { dice.roll_two.should_not > 13 }
      end
    end

    describe ".roll_d20" do
      let(:dice) { Dice.new }

      it "return value between 1 to 20" do
        NTIMES.times { 1.upto(20).include?(dice.roll_d20).should be_truthy }
      end

      it "cant return 21" do
        NTIMES.times { dice.roll_two.should_not > 20 }
      end
    end

    describe ".roll_two_d10" do
      let(:dice) { Dice.new }

      it "return value between 1 to 10" do
        NTIMES.times { 2.upto(20).include?(dice.roll_two_d10).should be_truthy }
      end

      it "can be less than 2" do
        NTIMES.times { dice.roll_two_d10.should_not < 2 }
      end

      it "cant return 21" do
        NTIMES.times { dice.roll_two_d10.should_not > 20 }
      end
    end

  end

  describe "new with 12 sides and 3 dices" do

    describe ".roll" do
      let(:dice) { Dice.new(12,3) }

      it "return value between 3 to 36" do
        3.upto(36).include?(dice.roll).should be_truthy
      end
    end

    describe ".roll_two" do
      let(:dice) { Dice.new(12,3) }

      it "return value between 2 to 24" do
        NTIMES.times { 2.upto(24).include?(dice.roll_two).should be_truthy }
      end

      it "cant return 1" do
        NTIMES.times { 2.upto(24).include?(dice.roll_two).should_not == 1 }
      end

      it "cant be lesser then 2" do
        NTIMES.times { dice.roll_two.should_not < 2 }
      end

      it "cant return 25" do
        NTIMES.times { dice.roll_two.should_not > 25 }
      end
    end

    describe ".roll_d20" do
      let(:dice) { Dice.new(12,3) }

      it "return value between 1 to 60" do
        NTIMES.times { 3.upto(60).include?(dice.roll_d20).should be_truthy }
      end

      it "cant return 61" do
        NTIMES.times { dice.roll_two.should_not > 61 }
      end
    end

    describe ".roll_two_d10" do
      let(:dice) { Dice.new(12,3) }

      it "return value between 2 to 20" do
        NTIMES.times { 2.upto(20).include?(dice.roll_two_d10).should be_truthy }
      end

      it "can be less than 2" do
        NTIMES.times { dice.roll_two_d10.should_not < 2 }
      end

      it "cant return 21" do
        NTIMES.times { dice.roll_two_d10.should_not > 20 }
      end
    end

  end

end
