class HomeController < ApplicationController
	def index
		if( current_user )
			if( current_user.players == [] )
				redirect_to :controller => :register, :action => :index
			end
			@current_games = [ ]
			@past_games = [ ]
			@future_games = [ ]
			current_user.players.each do |player|
				if DateTime.current > player.season.start.time( ) && DateTime.current < player.season.end.time( )
					@current_games << player
				end	
			end
		end
	end
end
