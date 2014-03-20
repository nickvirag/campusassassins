class Player < ActiveRecord::Base
	belongs_to :user
	belongs_to :season
	def getCurrentTargets
		t = [ ]
		if !currenttargets.blank?
			res = currenttargets.split( ',' ).map( &:to_i )
			res.each do |i|
				t << Player.find( i )
			end
		end
		t
	end
	def addSucceededTarget id
		if( succeededtargets != nil )
			succeededtargets += ","
		else
			succeededtargets = ""
		end
		succeededtargets += id.to_s
		succeededtargets
	end
	def addFailedTarget id
		if( failedtargets != nil )
			failedtargets += ","
		else
			failedtargets = ""
		end
		failedtargets += id.to_s
		failedtargets
	end
	def removeCurrentTarget id
		t = ''
		res = currenttargets.split( ',' ).map( &:to_i )
		res.each do |i|
			puts ( id.to_i - i.to_i ).to_s
			if( i.to_i != id.to_i )
				puts 'success with' + i.to_s
				if t != ''
					t += ','
				end
				t += i.to_s
				puts t
			end
		end
		t
	end
end
