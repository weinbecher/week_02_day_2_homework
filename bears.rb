class Bears


  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end


  def check_stomach
    return @stomach.count
  end


  def bear_take_fish(fish)
    @stomach.push(fish)
  end

end
