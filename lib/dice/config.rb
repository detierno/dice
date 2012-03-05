class Dice
  # This class is responsible for default settings of Dice class
  # these methods allow change the preferences of a dice and sets
  # some getter methods for check preferences
  class Config
    # Return the default number of dice sides
    def self.sides
      @sides
    end
  
    # Set the number of dice sides
    def self.sides=(sides)
      raise ArgumentError, 'Must be a Integer' unless sides.is_a? Integer
      @sides = sides
    end  
  
    # Return the default number of dices rolled
    def self.dices
      @dices
    end
  
    # Set the number of default dices rolled
    def self.dices=(dices)
      raise ArgumentError, 'Must be a Integer' unless dices.is_a? Integer
      @dices = dices
    end
    
    # Used to check if results is an array or not. Return true if setted for array
    def self.array?
      @array || false
    end
  
    # Set true or false for results in array format
    def self.array=(array)
      raise ArgumentError, 'Must be true or false' unless [true, false].include?(array)
      @array = array
    end
  end
end