# RDice
# Author::    Denis Tierno  (de.tierno@gmail.com)
# 
# This program is intended to allow a dice creation and perform some rolls
# the most basic use you can create a new instance of Dice and perform some rolls.
# 
# Dice.new creates a object with one dice with six sides by default and the result is a Integer 
# 
# To change the defaults just pass it on creation
#   dice = Dice.new(20,2,true)
# This will set the defaults as 2 dices with 20 sides each and result as a Array
#   dice.roll # => [9, 15]
# 
# To override the defaults sides and dices just write how many dices you wanna roll
#   dice = Dice.new(20,2)
#   
#   dice.roll          # rolls two d20 by default
#   dice.roll_two      # rolls two d20
#   dice.roll_four     # rolls four d20
#   dice.roll_d20      # rolls two d20
#   dice.roll_three_d8 # rolls three d8
#   dice.roll_10_d3    # rolls 10 d3

class Dice
  # Set the defaults values for Dice object
  def initialize(sides=6, dices=1, array=false)
    Dice::Config.sides = sides
    Dice::Config.dices = dices
    Dice::Config.array = array
  end
  
  # To perform a roll without use method missing exception call <tt>roll</tt>
  # with desired number of sides and dices.
  # First argument is an integer with number of dice sides and
  # second is an integer with the number of dices rolled by default.
  # Result can be a sum or a array.
  def roll(sides=preferred_sides, dices=preferred_dices)
    get_result(sides, dices)
  end
  
  # Provides some handy shortcuts for a Dice object allowing to call
  # methods like:
  # 
  #   dice = Dice.new
  #
  #   dice.roll
  #   dice.roll_two 
  #   dice.roll_d20
  #   dice.roll_three_d8
  #   dice.roll_10_d3
  def method_missing(method, *args, &block)
    if method =~ /roll_d(\w+)/
      roll($1.to_i)
    elsif method =~ /roll_(\w+)_d(\w+)/
      roll($2.to_i, translate_value($1))
    elsif method =~ /roll_(\w+)/
      roll(preferred_sides,translate_value($1))
    else
      super
    end
  end

private

  def preferred_sides
    Dice::Config.sides
  end
  
  def preferred_dices
    Dice::Config.dices
  end

  def result_in_array?
    Dice::Config.array?
  end

  def get_result(sides, dices)
    if result_in_array?
      results = []
      dices.times { results << (rand(sides) + 1).to_i }
      results
    else
      (1..dices).inject(0) {|a, b| a + rand(sides) + 1 }
    end
  end
  
  def translate_value(number)
    case number
    when 'one'
      value = 1
    when 'two'
      value = 2
    when 'three'
      value = 3
    when 'four'
      value = 4
    when 'five'
      value = 5
    when 'six'
      value = 6
    when 'seven'
      value = 7
    when 'eight'
      value = 8
    when 'nine'
      value = 9
    when 'ten'
      value = 10
    when 'eleven'
      value = 11
    when 'twelve'
      value = 12
    when 'thirteen'
      value = 13
    when 'fourteen'
      value = 14
    when 'fifteen'
      value = 15
    when 'sixteen'
      value = 16
    when 'seventeen'
      value = 17
    when 'eighteen'
      value = 18
    when 'nineteen'
      value = 19
    when 'twenty'
      value = 20
    else
      value = number.to_i
    end
    value
  end
end
