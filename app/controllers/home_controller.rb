class HomeController < ApplicationController
	def index
		if( current_user )
			if( current_user.players == [] )
				redirect_to :controller => :register, :action => :index
			end
		end
	end
end
