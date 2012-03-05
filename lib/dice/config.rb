class Dice
  class Config
    def self.sides
      @sides
    end
  
    def self.sides=(sides)
      raise ArgumentError, 'Must be a Integer' unless sides.is_a? Integer
      @sides = sides
    end  
  
    def self.dices
      @dices
    end
  
    def self.dices=(dices)
      raise ArgumentError, 'Must be a Integer' unless dices.is_a? Integer
      @dices = dices
    end
    
    def self.array?
      @array || false
    end
  
    def self.array=(array)
      raise ArgumentError, 'Must be true or false' unless [true, false].include?(array)
      @array = array
    end
  end
end