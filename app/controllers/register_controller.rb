class RegisterController < ApplicationController
  def index
  	@seasons = Season.all
  end
  def create
  	if( params[ :eventName ] != '' && params[ :eventDescription ] != '' && params[ :targets ] != '' && params[ :startTime ] != '' && params[ :endTime ] != '' )
  		nSeason = Season.new
  		nSeason.display = params[ :eventName ]
      nSeason.description = params[ :eventDescription ]
  		nSeason.targets = params[ :targets ]
  		nSeason.start = params[ :startTime ]
  		nSeason.end = params[ :endTime ]
  		nSeason.save
  		render :text => params[ :endTime ]
  	else
  		render :text => "You left something blank!"
  	end
  end
  def event
  end
end
