class DicegameController < ApplicationController
	def show
		return "show"
	end
	 
	def roll
		if !params['point']
			@goal=0
		else
			@goal=params['point'].to_i
		end
		@number1 = [1,2,3,4,5,6].sample
		@number2 = [1,2,3,4,5,6].sample
		@sum=@number1+@number2
		return "roll"
	end
end