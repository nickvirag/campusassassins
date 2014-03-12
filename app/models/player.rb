class Player < ActiveRecord::Base
	belongs_to :user
	belongs_to :season
	def getCurrentTargets
		t = [ ]
		res = currenttargets.split( ',' ).map( &:to_i )
		res.each do |i|
			t << Player.find( i )
		end
		t
	end
end
