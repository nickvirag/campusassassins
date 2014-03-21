class UserController < ApplicationController
	def tag
		tagged = Player.find( params[ :id ] )
		tagger = Player.find( params[ :tagger ] )
		season = tagger.season
		tagger.succeededtargets = tagger.addSucceededTarget( params[ :id ] )
		tagger.currenttargets = tagger.removeCurrentTarget( params[ :id ] )
		tagger.points += season.tagpoints
		if( tagged.points - season.tagged_points < 0 )
			tagged.points = 0
		else
			tagged.points -= season.tagged_points
		end
		tagger.save
		tagged.save
		redirect_to :controller => :home, :action => :index
	end
	def profile
		@user = User.find( params[ :id ] )
	end
end
