# RDice [![Build Status](https://secure.travis-ci.org/detierno/dice.png?branch=master)](http://travis-ci.org/detierno/dice)

This gem was created with studies purpose. It simple create a dice and let you roll one or more dices with different sides.

## Installation

Add to your Gemfile and run the `bundle` command to install it.

```ruby
gem "rdice"
```

**Tested with Ruby 1.9.3**


## Usage


Them most basic use you can create a new instance of Dice and perform some rolls. The returned value is a integer containing the sum of all dices rolled

```ruby
dice = Dice.new

dice.roll
dice.roll_two 
dice.roll_d20
dice.roll_three_d8
dice.roll_10_d3
```

This gem comes with shortcuts of one to twenty so you can call *.roll_four_d12*. If you want a dice with more than twenty sides you can explicit declare the number of sides with *.roll_32_d3*

If you call roll with only the number of times you want to roll it will roll the default dice with the required number of times

## Changing the defaults

When you call *.roll* method this roll a dice with the defaults sides and dices number (6 and 1). If you want to change the defaults you can in the class creation

```ruby
dice = Dice.new(20,2)

dice.roll # rolls two d20 by default
dice.roll_two # rolls two d20
dice.roll_four # rolls four d20
dice.roll_d20 # rolls two d20
dice.roll_three_d8 # rolls three d8
dice.roll_10_d3 # rolls 10 d3
```

## License

Ruby on Rails is released under the MIT license:
[http://www.opensource.org/licenses/MIT](http://www.opensource.org/licenses/MIT)