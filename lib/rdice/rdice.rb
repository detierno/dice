class Rdice
  def initialize(faces=6, dices=1)
    Rdice::Config.faces = faces
    Rdice::Config.dices = dices
  end

  def roll(faces=preferred_faces, dices=preferred_dices)
    get_result(faces, dices)
  end
  
  def method_missing(method, *args, &block)
    if method =~ /roll_d(\w+)/
      roll($1.to_i)
    elsif method =~ /roll_(\w+)_d(\w+)/
      roll($2.to_i, translate_value($1))
    elsif method =~ /roll_(\w+)/
      roll(preferred_faces,translate_value($1))
    else
      super
    end
  end

private

  def preferred_faces
    Rdice::Config.faces
  end
  
  def preferred_dices
    Rdice::Config.dices
  end

  def get_result(faces, dices)
    (1..dices).inject(0) {|a, b| a + rand(faces) + 1 }
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
