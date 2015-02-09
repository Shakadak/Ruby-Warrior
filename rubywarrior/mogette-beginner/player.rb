class Player
  def play_turn(warrior)
	  if warrior.health < 20 && @prev_health == warrior.health && warrior.feel.empty?
		  puts "before rest"
		  warrior.rest!
		  puts "after rest"
	  elsif warrior.feel.empty?
		  warrior.walk!
	  else
		  warrior.attack!
	  end
	  @prev_health = warrior.health
  end
end
