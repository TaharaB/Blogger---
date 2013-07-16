class Player
  def play_turn(warrior)
  	@warrior = warrior
  	@warrior_health = warrior.health

	if warrior.health < 10
   		warrior.rest
   	elsif !warrior.feel.empty?
    	warrior.attack!
  	elsif warrior.feel.empty?
    	warrior.walk!
    
   
   end

  end

  def being_attacked?
  	#if your health is going down
  	if @warrior_health <= @warrior.health
  		true
   	else
		false
	end
  end


end


=begin







=end


