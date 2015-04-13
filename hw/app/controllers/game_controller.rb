class GameController < ApplicationController
	def choose
		@choices=weapon_list
		return "choose"
	end
	def result
	# 	@try="sdfs"
	 	@weapon=params["index"]
	 	@machine_weapon=weapon_list.sample(1)[0]
	 	if @weapon == @machine_weapon
	 		@game_result= "It is a tie!"
	 	
		else 
			if @weapon =='paper'
				if @machine_weapon == 'rock'
					@game_result= "You win!"
				else
					@game_result= "You lose!"
				end
			end
			if @weapon =='rock'
				if @machine_weapon == 'scissors'
					@game_result= "You win!"
				else
					@game_result= "You lose!"
				end
			end
			if @weapon =='scissors'
				if @machine_weapon == 'paper'
					@game_result= "You win!"
				else
					@game_result= "You lose!"
				end
			end
	 	end
	end
	def weapon_list
		return ['paper','rock','scissors']
	end
end