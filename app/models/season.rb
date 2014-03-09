class Season < ActiveRecord::Base
	has_many :players
	def A
		pl = [ ]
		players.each do |player|
			pl << { :player => player.id, :targets => [ ], :assignments => 0, :assigned => 0 }
		end
		assign = 1
		while true
			pl.each do |p|
				ct = 0
				while true
					ps = pl.sample
					if p[ :player ] != ps[ :player ] && p[ :assignments ] != assign && ps[ :assigned ] != assign && !p[ :targets ].include?( ps[ :player ] )
						p[ :targets ] << ps[ :player ]
						p[ :assignments ] += 1
						ps[ :assigned ] += 1
						break
					end
					ct += 1
					if ct == pl.count
						pl.each do |pa|
							if p[ :player ] != pa[ :player ] && p[ :assignments ] != assign && pa[ :assigned ] != assign && !p[ :targets ].include?( pa[ :player ] )
								p[ :targets ] << pa[ :player ]
								p[ :assignments ] += 1
								ps[ :assigned ] += 1
								break
							end
						end
						break
					end
				end
			end
			if assign == targets
				break
			end
			assign += 1
		end
		pl.each do |p|
			tp = players.find( p[ :player ] )
			tp.currenttargets = p[ :targets ].join( ',' )
			tp.save
		end
	end
end
