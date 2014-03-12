class UserController < ApplicationController
	def tag
		render :text => "tagged " + Player.find( params[ :id ] ).user.name
		
	end
end
