class River
  attr_reader :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def check_fish
    @fish.count
  end

  def add_fish(fish)
    @fish.push(fish)
  end



end
