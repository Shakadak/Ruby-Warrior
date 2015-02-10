class Player

	def initialize()
		@max_health = 0
		@expected_health = 0
	end

	def play_turn(warrior)
		heal = 0
		if @max_health == 0
			@max_health = warrior.health
		end
		if warrior.health < @max_health && @expected_health == warrior.health && warrior.feel.empty?
			warrior.rest!
			heal = @max_health * 0.1
		elsif warrior.feel.enemy?
			warrior.attack!
		elsif warrior.feel.captive?
			warrior.rescue!
		else
			warrior.walk!
		end
		@expected_health = warrior.health + heal
	end
end
