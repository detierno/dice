# Dice

This gem was created with studies purpose. It simple create a dice and let you roll one or more dices with different faces.

## Installation

Add to your Gemfile and run the `bundle` command to install it.

```ruby
gem "dice" # not published yet will not work
```

**Requires Ruby 1.9.3 or later.**


## Usage


Them most basic use you can create a new instance of Dice and perform some rolls

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

When you call *.roll* method this roll a dice with the defaults faces and dices number (6 and 1). If you want to change the defaults you can in the class creation

```ruby
dice = Dice.new(20,2)

dice.roll # will roll two d20 by default
```

## License

Ruby on Rails is released under the MIT license:
[http://www.opensource.org/licenses/MIT](http://www.opensource.org/licenses/MIT)