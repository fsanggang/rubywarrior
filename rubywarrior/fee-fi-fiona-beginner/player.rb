class Player
  @health = nil;

  def play_turn(warrior)
    @health = warrior.health unless @health

    if warrior.feel.empty?
      if warrior.health < @health
        warrior.walk!
      elsif warrior.health < 15
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
