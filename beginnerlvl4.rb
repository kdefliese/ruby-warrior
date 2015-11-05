class Player
  def initialize
    @health = 20
  end

  def play_turn(warrior)
    if warrior.feel.empty?
      if warrior.health < @health
        warrior.walk!
      elsif warrior.health < 20
        warrior.rest!
      else
        warrior.walk!
      end
    else
      warrior.attack!
    end
    @health = warrior.health
  end
end
